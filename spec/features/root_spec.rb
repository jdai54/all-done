require 'rails_helper'

describe "user visits the root page", :type => :feature do
  it "takes them to the profile page" do
    visit root_path
    expect(page).to have_content 'Sign In'
  end
end

describe "user signs in", :type => :feature do
  User.destroy_all
  let(:user) { FactoryGirl.create(:user) }

  it "successfully" do
    visit user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log in'
    expect(page).to have_content 'Sign Out'
  end

  it "unsuccessfully" do
    visit new_user_session_path
    expect(page).to have_content 'Log in'
  end
end

feature "Create to-do items" do
  User.destroy_all
  let(:user) { FactoryGirl.create(:user) }

  scenario "can create an item" do
    login_as(user, :scope => :user)
    visit '/'
    fill_in 'item_name', with: 'Eat Lunch'
    click_on 'Save'
    expect(page).to have_content 'Eat Lunch'
  end
end
