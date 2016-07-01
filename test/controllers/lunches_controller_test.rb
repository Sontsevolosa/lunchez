require 'test_helper'

class LunchesControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
    assert_select 'title', 'Lunchez'
  end
end
