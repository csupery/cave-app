require 'test_helper'

class CastlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @castle = castles(:one)
  end

  test "should get index" do
    get castles_url
    assert_response :success
  end

  test "should get new" do
    get new_castle_url
    assert_response :success
  end

  test "should create castle" do
    assert_difference('Castle.count') do
      post castles_url, params: { castle: { appellation: @castle.appellation, country: @castle.country, name: @castle.name } }
    end

    assert_redirected_to castle_url(Castle.last)
  end

  test "should show castle" do
    get castle_url(@castle)
    assert_response :success
  end

  test "should get edit" do
    get edit_castle_url(@castle)
    assert_response :success
  end

  test "should update castle" do
    patch castle_url(@castle), params: { castle: { appellation: @castle.appellation, country: @castle.country, name: @castle.name } }
    assert_redirected_to castle_url(@castle)
  end

  test "should destroy castle" do
    assert_difference('Castle.count', -1) do
      delete castle_url(@castle)
    end

    assert_redirected_to castles_url
  end
end
