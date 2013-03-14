require 'spec_helper'
Capybara.default_wait_time = 10
describe "Shows" do
  describe 'GET /' do
    it 'has add new show button', :js => true do
      visit root_path
      page.should have_link('New Show')
    end

    it 'shows new show form', :js => true do
      visit root_path
      click_link('New Show')
      page.should have_button('Create Show')
    end

    it 'hides the form when cancel is pressed', :js => true do
      visit root_path
      click_link('New Show')
      click_button('Cancel')
      page.should_not have_button('Create Show')
    end
  end

  describe 'POST /shows' do
    it 'creates a new show that shows up on the screen', :js => true do
      visit root_path
      click_link('New Show')
      fill_in('show_artist', :with => 'abc')
      click_button('Create Show')
      page.should_not have_button('Create Show')
      page.should have_text('abc')
    end
  end
end
