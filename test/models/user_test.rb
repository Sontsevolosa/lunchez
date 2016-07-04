require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:default)
  end

  test 'should be valid' do
    assert @user.valid?
  end
end
