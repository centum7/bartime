require 'test_helper'

class ShopsControllerTest < ActionController::TestCase
  setup do
    @shop = shops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop" do
    assert_difference('Shop.count') do
      post :create, shop: { address: @shop.address, fri_time: @shop.fri_time, langitude: @shop.langitude, latitude: @shop.latitude, mon_time: @shop.mon_time, name: @shop.name, sta_time: @shop.sta_time, sun_time: @shop.sun_time, thu_time: @shop.thu_time, tue_time: @shop.tue_time, url: @shop.url, web_time: @shop.web_time }
    end

    assert_redirected_to shop_path(assigns(:shop))
  end

  test "should show shop" do
    get :show, id: @shop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop
    assert_response :success
  end

  test "should update shop" do
    patch :update, id: @shop, shop: { address: @shop.address, fri_time: @shop.fri_time, langitude: @shop.langitude, latitude: @shop.latitude, mon_time: @shop.mon_time, name: @shop.name, sta_time: @shop.sta_time, sun_time: @shop.sun_time, thu_time: @shop.thu_time, tue_time: @shop.tue_time, url: @shop.url, web_time: @shop.web_time }
    assert_redirected_to shop_path(assigns(:shop))
  end

  test "should destroy shop" do
    assert_difference('Shop.count', -1) do
      delete :destroy, id: @shop
    end

    assert_redirected_to shops_path
  end
end
