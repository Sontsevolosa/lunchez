require 'test_helper'

class LunchesControllerTest < ActionController::TestCase
  test 'should get index after successful login' do
    sign_in users(:default)
    get :index
    assert_response :success
    assert_select 'title', 'Lunchez'
  end

  test 'should not get index without successful login' do
    get :index
    assert_response :redirect
  end

  test 'should redirect to the sign_in path when user is non logged in' do
    get :index
    assert_redirected_to new_user_session_path
  end
end
