require 'test_helper'

class SignoutButtonTest < ActionDispatch::IntegrationTest
  test 'sign out button' do
    visit('/')
    sign_in users(:default)
    click_button('Log in')
    visit('/')
    screenshot_and_save_page
    click_on('Sign out')
    assert page.has_content?('Log in'), 'Your page does not have content'
  end
end
