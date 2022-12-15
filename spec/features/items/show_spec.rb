require "rails_helper"

RSpec.describe "Items show page" do 
  describe "As a visitor" do 
    describe "When I click on an item name from a merchant's show page I'm taken to the item show page" do 
      it "displays the name, description, and unit price of each item", :vcr do 
        visit "/merchants/1"

        click_link("Item Nemo Facere")

        expect(current_path).to eq(item_path(4))
        expect(page).to have_content("Name: Item Nemo Facere")
        expect(page).to have_content("Description: Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
        expect(page).to have_content("Unit Price: $42.91")
      end
    end
  end
end