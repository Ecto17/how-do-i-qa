require 'rails_helper'

describe 'Task 1 spec', js: true, type: :feature do
  describe 'Task 1 page' do
    it 'passes assertion within a div' do
      visit 'http://localhost:3000/pages/test_1'
      expect(page).to have_content('Test #1')
        within("div.text-right") do
            find('.btn-success').click
        end
      expect(page).to have_content('forms')
    end
  end
end