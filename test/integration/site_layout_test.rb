require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test 'layout links' do
    login_as users(:default)
    get root_path
    assert_template 'lunches/index'
    assert_select 'a[href=?]', root_path, count: 3
  end
end
