require 'rails_helper'

describe 'Task 1 spec', js: true, type: :feature do
  describe 'index page' do
    it 'shows the right content' do
      visit 'http://localhost:3000/pages/test_1'
      expect(page).to have_content('Test #1')
        within("div.text-right") do
            find('.btn-success').click
        end
      expect(page).to have_content('forms')
    end
  end
end