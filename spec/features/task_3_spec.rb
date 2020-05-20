require 'rails_helper'

describe 'Task 3 spec', js: true, type: :feature do
  describe 'index page' do
    it 'shows the right content' do
      visit 'http://localhost:3000/pages/test_3'
      expect(page).to have_content('Test #3')
      find('.table-bordered', match: :first).click
      expect(page).to have_css(".highlighted")
      click_link('Next')
      expect(page).to have_content('Test #4')
    end
  end
end