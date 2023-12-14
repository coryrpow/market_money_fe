require 'rails_helper'

RSpec.describe 'Markets index page', type: :feature do
  describe "when I visit /markets" do
    it "I see all markets listed with their name, city and state" do
      VCR.use_cassette("back_end_all_markets") do
        visit markets_path

        within(first(".market")) do
          expect(page).to have_css(".name")
          expect(page).to have_css(".city")
          expect(page).to have_css(".state")

          expect(page).to have_content("14&U Farmers' Market")
          expect(page).to have_content("Washington")
          expect(page).to have_content("District of Columbia")
        end
      end
    end

    it "when I click a button to see more info on a specific market, I'm taken
    to that market's show page" do
      VCR.use_cassette("back_end_all_markets") do
        visit markets_path

        within(first(".market")) do
          expect(page).to have_button("Info for this Market")
          click_button("Info for this Market")
        end

        expect(current_path).to eq(market_path(322458))
      end
    
    end
  end
end


# <section class='existing-users'>


#   As a visitor,
# When I visit '/markets'
# I see all markets listed with their name, city and state
# When I click a button to see more info on that market
# I'm taken to that market's show page '/markets/:id'