require "rails_helper"

RSpec.describe "the merchants index page" do 
  describe "As a visitor" do
    describe "When I visit '/merchants'" do 
      it "should display a list of merchants by name, each linked to their show page", :vcr do 
        visit merchants_path

        expect(page).to have_link("Schroeder-Jerde", href: merchant_path(1))
        expect(page).to have_link("Klein, Rempel and Jones", href: merchant_path(2))
        expect(page).to have_link("Willms and Sons", href: merchant_path(3))
        expect(page).to have_link("Cummings-Thiel", href: merchant_path(4))
      end
    end
  end
end