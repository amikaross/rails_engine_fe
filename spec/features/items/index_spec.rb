require "rails_helper"

RSpec.describe "The items index page" do 
  describe "As a visitor" do 
    describe "When I visit /items" do 
      it "displays a list of items by name, each of which is a link to its show page", :vcr do 
        visit items_path 

        expect(page).to have_link("Item Nemo Facere", href: item_path(4))
        expect(page).to have_link("Item Expedita Aliquam", href: item_path(5))
        expect(page).to have_link("Item Provident At", href: item_path(6))
        expect(page).to have_link("Item Voluptates Velit", href: item_path(708))
        expect(page).to have_link("Item Sapiente Consequuntur", href: item_path(1676))
      end
    end
  end
end