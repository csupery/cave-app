require 'test_helper'

class VintagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vintage = vintages(:one)
  end

  test "should get index" do
    get vintages_url
    assert_response :success
  end

  test "should get new" do
    get new_vintage_url
    assert_response :success
  end

  test "should create vintage" do
    assert_difference('Vintage.count') do
      post vintages_url, params: { vintage: { castle_id: @vintage.castle_id, year: @vintage.year } }
    end

    assert_redirected_to vintage_url(Vintage.last)
  end

  test "should show vintage" do
    get vintage_url(@vintage)
    assert_response :success
  end

  test "should get edit" do
    get edit_vintage_url(@vintage)
    assert_response :success
  end

  test "should update vintage" do
    patch vintage_url(@vintage), params: { vintage: { castle_id: @vintage.castle_id, year: @vintage.year } }
    assert_redirected_to vintage_url(@vintage)
  end

  test "should destroy vintage" do
    assert_difference('Vintage.count', -1) do
      delete vintage_url(@vintage)
    end

    assert_redirected_to vintages_url
  end
end
