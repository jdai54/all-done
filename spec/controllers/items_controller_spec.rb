require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  let(:my_item) { Item.create!(name: "New Todo Item") }

  describe "DELETE destroy" do
    it "deletes the todo item" do
      delete :destroy, {id: my_item.id}
      count = Item.where({id: my_item.id}).size
      expect(count).to eq 0
    end
  end
end
