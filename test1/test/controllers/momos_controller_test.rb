require 'test_helper'

class MomosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @momo = momos(:one)
  end

  test "should get index" do
    get momos_url
    assert_response :success
  end

  test "should get new" do
    get new_momo_url
    assert_response :success
  end

  test "should create momo" do
    assert_difference('Momo.count') do
      post momos_url, params: { momo: { body: @momo.body, title: @momo.title } }
    end

    assert_redirected_to momo_url(Momo.last)
  end

  test "should show momo" do
    get momo_url(@momo)
    assert_response :success
  end

  test "should get edit" do
    get edit_momo_url(@momo)
    assert_response :success
  end

  test "should update momo" do
    patch momo_url(@momo), params: { momo: { body: @momo.body, title: @momo.title } }
    assert_redirected_to momo_url(@momo)
  end

  test "should destroy momo" do
    assert_difference('Momo.count', -1) do
      delete momo_url(@momo)
    end

    assert_redirected_to momos_url
  end
end
