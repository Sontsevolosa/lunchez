require 'test_helper'

class SignoutButtonTest < ActionDispatch::IntegrationTest
  test 'sign out button' do
    visit('/')
    fill_in('Email', :with => 'justin@email.com')
    fill_in('Password', :with => 'justin123')
    #find_button('Log')
    click_button('Log in')
    #assert page.has_content?('Hello my lovely Admin! =^_^='), 'Your page does not have content'
    visit('/')
    #find_link('Sign out', :visible => :all)
    #find_link('Sign out', :visible => :all).visible?
    #click_on(destroy_user_session_path)
    #find('#signout').click_on('Sign out')
    #save_and_open_page
    #click_link("signout")
    #page.has_selector?('#signout', visible: true)
    #find("#signout").click
    #find_link("Sign out").trigger('click')
    #page.has_content?('Log in')
    #assert page.has_content?('Users')
    #find('#bla', :text => 'Sign out').click
    #find_link("Sign out")
    #find(:xpath, '//li[contains(.//a[@href = "/users/sign_out"]/text(), "Sign out")]').value
    click_on('Sign out')
    #page.save_screenshot('screenshot.png')
    #find 'a', text: 'Sign out'
  end
end
