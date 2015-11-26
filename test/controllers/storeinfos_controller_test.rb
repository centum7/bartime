require 'test_helper'

class StoreinfosControllerTest < ActionController::TestCase
  setup do
    @storeinfo = storeinfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storeinfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storeinfo" do
    assert_difference('Storeinfo.count') do
      post :create, storeinfo: { address: @storeinfo.address, fri_time: @storeinfo.fri_time, latitude: @storeinfo.latitude, longitude: @storeinfo.longitude, mon_time: @storeinfo.mon_time, name: @storeinfo.name, sta_time: @storeinfo.sta_time, sun_time: @storeinfo.sun_time, thu_time: @storeinfo.thu_time, tue_time: @storeinfo.tue_time, url: @storeinfo.url, web_time: @storeinfo.web_time }
    end

    assert_redirected_to storeinfo_path(assigns(:storeinfo))
  end

  test "should show storeinfo" do
    get :show, id: @storeinfo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storeinfo
    assert_response :success
  end

  test "should update storeinfo" do
    patch :update, id: @storeinfo, storeinfo: { address: @storeinfo.address, fri_time: @storeinfo.fri_time, latitude: @storeinfo.latitude, longitude: @storeinfo.longitude, mon_time: @storeinfo.mon_time, name: @storeinfo.name, sta_time: @storeinfo.sta_time, sun_time: @storeinfo.sun_time, thu_time: @storeinfo.thu_time, tue_time: @storeinfo.tue_time, url: @storeinfo.url, web_time: @storeinfo.web_time }
    assert_redirected_to storeinfo_path(assigns(:storeinfo))
  end

  test "should destroy storeinfo" do
    assert_difference('Storeinfo.count', -1) do
      delete :destroy, id: @storeinfo
    end

    assert_redirected_to storeinfos_path
  end
end
