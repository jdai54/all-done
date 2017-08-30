require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  it { is_expected.to have_many(:items) }

  describe "attributes" do
    it "should have an email attribute" do
      expect(user).to have_attribute(email: user.email)
    end
  end
end
