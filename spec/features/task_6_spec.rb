require 'rails_helper'
require 'faker'

FactoryGirl.define do
    factory :country, class: SomeModule::Country do
        name "Poland"
        code "PL"
    end
end

describe 'Task 6 spec positive', js: true, type: :feature do
  describe 'index page' do
    it 'shows the right content' do
        country = FactoryGirl.create(:country)
        visit 'http://localhost:3000/pages/test_6'
        expect(page).to have_content('Test #6')
        expect(page).to have_content(country.code)
    end
  end
end

describe 'Task 6 spec negative', js: true, type: :feature do
    describe 'index page' do
      it 'shows the right content' do
        country = FactoryGirl.build(:country, name: "Germany", code: "DE")
        visit 'http://localhost:3000/pages/test_6'
        expect(page).to have_content('Test #6')
        expect(page).not_to have_content(country.code)
      end
    end
  end