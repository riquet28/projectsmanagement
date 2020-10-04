require 'test_helper'

class FunctionnalTestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get functionnal_tests_index_url
    assert_response :success
  end

end
