require 'test_helper'

class SignoutButtonTest < ActionDispatch::IntegrationTest
  test 'sign out button' do
    visit root_path
    sign_in users(:default)
    click_button('Log in')
    assert_text('Hello everyone!')

    visit root_path
    #screenshot_and_save_page
    click_on('Sign out')
    assert page.has_content?('Log in'), 'Your page does not have content'
  end
end
