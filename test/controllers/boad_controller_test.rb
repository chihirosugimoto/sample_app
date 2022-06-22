require 'test_helper'

class BoadControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get boad_title:string_url
    assert_response :success
  end

  test "should get body:text" do
    get boad_body:text_url
    assert_response :success
  end

end
