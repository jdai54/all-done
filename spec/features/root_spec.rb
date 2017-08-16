require 'rails_helper'

describe "user visits the root page", :type => :feature do
  it "takes them to the profile page" do
    visit root_path
    expect(page).to have_content 'Log in'
  end
end

describe "user signs in", :type => :feature do
  let(:user) { create(:user, email: 'user@example.com', password: 'password', password_confirmation: 'password') }
  it "successfully" do
    visit user_session_path
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
    click_on 'Log in'
    expect(page).to have_content 'Sign Out'
  end

  it "unsuccessfully" do
    visit new_user_session_path
    expect(page).to have_content 'Log in'
  end
end
