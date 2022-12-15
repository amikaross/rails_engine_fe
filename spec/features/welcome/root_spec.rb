require "rails_helper"

RSpec.describe "The root page" do 
  describe "As a visitor, when I visit the root page" do 
    it "has a search bar which can search for merchants by name", :vcr do 
      visit root_path 

      fill_in(:q, with: "Schroeder")
      click_button("Search")

      expect(current_path).to eq(merchants_path)
    end
  end
end