require 'rails_helper'

RSpec.describe 'Markets show page', type: :feature do
  describe "when I visit /markets/:id" do
    it "I see that market's name and readable address and also a list of all the vendors that are
    at that market and each vendor name is a link to that vendor's show page" do
      # VCR.use_cassette("back_end_market") do
        visit "/markets/322458"
  
        expect(page).to have_content("14&U Farmers' Market")
        expect(page).to have_content("Washington")
        expect(page).to have_content("District of Columbia")

        within(first(".vendor")) do
          expect(page).to have_link("The Charcuterie Corner")
          click_link("The Charcuterie Corner")
        end
        
        expect(current_path).to eq("/vendors/322458")
      # end
    end
  end
end