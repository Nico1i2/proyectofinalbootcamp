require 'test_helper'

class ClientProductLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_product_line = client_product_lines(:one)
  end

  test "should get index" do
    get client_product_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_client_product_line_url
    assert_response :success
  end

  test "should create client_product_line" do
    assert_difference('ClientProductLine.count') do
      post client_product_lines_url, params: { client_product_line: { client_id: @client_product_line.client_id, product_line_id: @client_product_line.product_line_id } }
    end

    assert_redirected_to client_product_line_url(ClientProductLine.last)
  end

  test "should show client_product_line" do
    get client_product_line_url(@client_product_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_product_line_url(@client_product_line)
    assert_response :success
  end

  test "should update client_product_line" do
    patch client_product_line_url(@client_product_line), params: { client_product_line: { client_id: @client_product_line.client_id, product_line_id: @client_product_line.product_line_id } }
    assert_redirected_to client_product_line_url(@client_product_line)
  end

  test "should destroy client_product_line" do
    assert_difference('ClientProductLine.count', -1) do
      delete client_product_line_url(@client_product_line)
    end

    assert_redirected_to client_product_lines_url
  end
end
