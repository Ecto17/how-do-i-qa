require 'rails_helper'
require 'faker'

FactoryGirl.define do
    factory :user do
        email Faker::Internet.email
        password "password"
    end
end

describe 'Task 5 spec', js: true, type: :feature do
  describe 'index page' do
    it 'shows the right content' do
        user = FactoryGirl.create(:user)
        visit 'http://localhost:3000/pages/test_5'
        expect(page).to have_content('Log in')
        visit 'http://localhost:3000/users/sign_up'
        page.fill_in 'user_email', :with => user.email
        page.fill_in 'user_password', :with => user.password
        page.fill_in 'user_password_confirmation', :with => user.password
        click_button('Sign up')
        expect(page).to have_content(user.email)
        click_link('Next')
        expect(page).to have_content('Test #6')
    end
  end
end