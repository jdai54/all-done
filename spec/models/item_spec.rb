require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:name) { "Temporary To-Do Item" }
  let(:user) { create(:user) }
  it { is_expected.to belong_to(:user) }

  describe "attributes" do
    it "as a name attribute" do
      expect(item).to have_attribute(name: item.name)
    end
  end
end
