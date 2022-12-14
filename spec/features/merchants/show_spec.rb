require "rails_helper"

RSpec.describe "Merchants show" do 
  describe "As a visitor" do 
    describe "When I click on the name of a merchant in the merchants index, it takes me to a show page" do 
      it "displays a list of the merchant's items", :vcr do 
        visit merchants_path 

        click_link("Schroeder-Jerde")

        expect(current_path).to eq(merchant_path(1))

        expect(page).to have_link("Item Nemo Facere", href: item_path(4))
        expect(page).to have_link("Item Expedita Aliquam", href: item_path(5))
        expect(page).to have_link("Item Provident At", href: item_path(6))
        expect(page).to have_link("Item Expedita Fuga", href: item_path(7))
      end
    end
  end
end