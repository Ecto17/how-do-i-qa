require 'rails_helper'

describe 'Task 2 spec', js: true, type: :feature do
  describe 'Task 2 page' do
    it 'passes assertion with simple js inputs' do
      visit 'http://localhost:3000/pages/test_2'
      expect(page).to have_content('Test #2')
      fill_in('example_textfield', with: 'Seba')
      check('example_checkbox')
      select('Opt 1', from: 'example_select')
      choose('example_radiobutton_opt_2')
      click_on('Submit')
      click_link('Next')
      expect(page).to have_content('simple js')
    end
  end
end