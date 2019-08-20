require 'test_helper'

class RobertosControllerTest < ActionDispatch::IntegrationTest
  test "should get barros" do
    get robertos_barros_url
    assert_response :success
  end

end
