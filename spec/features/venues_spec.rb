require 'spec_helper'

describe "Venues" do
  describe "GET /" do
    it "has add new venue button", :js => true do
      visit root_path
      page.should have_link("New Venue")
    end

    it "shows the new venue form", :js => true do
      visit root_path
      click_link("New Venue")
      page.should have_button("Create Venue")
    end

    it "hides the form when cancel is pressed", :js => true do
      visit root_path
      click_link("New Venue")
      click_button("Cancel")
      page.should_not have_button("Create Venue")
    end
  end

  describe "POST /venues" do
    it "creates a new venue that shows up on screen", :js => true do
      visit root_path
      click_link("New Venue")
      fill_in("venue_name", :with => "abc")
      click_button("Create Venue")
      page.should_not have_button("Create Venue")
      page.should have_text("abc")
    end
  end

end
