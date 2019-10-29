require 'rails_helper'

feature "movie director info included:" do

    scenario "home page should have director column" do
        visit "/movies"
        expect(page).to have_css "th", text: "Director"
    end

    # scenario "movie page should have director info" do
    #     visit "/movies"
    #     click_link "More about Aladdin"
    #     expect(page).to have_content("Director:")
    # end
    #
    # scenario "movie page should have link to movies with same director" do
    #     visit "/movies"
    #     click_link "More about Aladdin"
    #     expect(page).to have_link("Find Movies With Same Director")
    # end
end
