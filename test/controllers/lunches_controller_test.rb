require 'test_helper'

class LunchesControllerTest < ActionController::TestCase
  test 'should get index after successful login' do
    sign_in users(:default)
    get :index
    assert_response :success
    assert_select 'title', 'Lunchez'
  end
end
