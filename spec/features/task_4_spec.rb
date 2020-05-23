require 'rails_helper'
Capybara.default_max_wait_time = 5

describe 'Task 4 spec', js: true, type: :feature do
  describe 'index page' do
    it 'shows the right content' do
      visit 'http://localhost:3000/pages/test_4'
      expect(page).to have_content('Test #4')
      find('.btn-default').click
      expect(page).to have_content('This is answer from the server')
      click_link('Next')
      expect(page).to have_content('Log in')
    end
  end
end