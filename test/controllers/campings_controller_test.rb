require 'test_helper'

class CampingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @camping = campings(:one)
  end

  test "should get index" do
    get campings_url
    assert_response :success
  end

  test "should get new" do
    get new_camping_url
    assert_response :success
  end

  test "should create camping" do
    assert_difference('Camping.count') do
      post campings_url, params: { camping: { body: @camping.body, name: @camping.name, ville_id: @camping.ville_id } }
    end

    assert_redirected_to camping_url(Camping.last)
  end

  test "should show camping" do
    get camping_url(@camping)
    assert_response :success
  end

  test "should get edit" do
    get edit_camping_url(@camping)
    assert_response :success
  end

  test "should update camping" do
    patch camping_url(@camping), params: { camping: { body: @camping.body, name: @camping.name, ville_id: @camping.ville_id } }
    assert_redirected_to camping_url(@camping)
  end

  test "should destroy camping" do
    assert_difference('Camping.count', -1) do
      delete camping_url(@camping)
    end

    assert_redirected_to campings_url
  end
end
