require 'test_helper'

class SignoutButtonTest < ActionDispatch::IntegrationTest
  test 'sign out button' do
    visit root_path
    sign_in users(:default)
    click_button('Log in')
    assert_text('Hello everyone!')

    visit root_path
    click_on('Sign out')
    assert_text('Log in')
  end
end
