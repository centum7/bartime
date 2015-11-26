require 'test_helper'

class StoresControllerTest < ActionController::TestCase
  setup do
    @store = stores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store" do
    assert_difference('Store.count') do
      post :create, store: { address: @store.address, fri_time: @store.fri_time, langitude: @store.langitude, latitude: @store.latitude, mon_time: @store.mon_time, name: @store.name, sta_time: @store.sta_time, sun_time: @store.sun_time, thu_time: @store.thu_time, tue_time: @store.tue_time, url: @store.url, web_time: @store.web_time }
    end

    assert_redirected_to store_path(assigns(:store))
  end

  test "should show store" do
    get :show, id: @store
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store
    assert_response :success
  end

  test "should update store" do
    patch :update, id: @store, store: { address: @store.address, fri_time: @store.fri_time, langitude: @store.langitude, latitude: @store.latitude, mon_time: @store.mon_time, name: @store.name, sta_time: @store.sta_time, sun_time: @store.sun_time, thu_time: @store.thu_time, tue_time: @store.tue_time, url: @store.url, web_time: @store.web_time }
    assert_redirected_to store_path(assigns(:store))
  end

  test "should destroy store" do
    assert_difference('Store.count', -1) do
      delete :destroy, id: @store
    end

    assert_redirected_to stores_path
  end
end
