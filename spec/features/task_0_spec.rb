require 'rails_helper'

describe 'Task 0 spec', js: true, type: :feature do
  describe 'index page' do
    it 'shows the right content' do
      visit 'http://localhost:3000/pages/test_0'
      expect(page).to have_content('Test #0')
      click_link('Next')
      expect(page).to have_content('scoping')
    end
  end
end