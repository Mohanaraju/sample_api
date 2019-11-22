require 'test_helper'

class ResgisterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resgister_index_url
    assert_response :success
  end

  test "should get show" do
    get resgister_show_url
    assert_response :success
  end

  test "should get new" do
    get resgister_new_url
    assert_response :success
  end

  test "should get edit" do
    get resgister_edit_url
    assert_response :success
  end

end
