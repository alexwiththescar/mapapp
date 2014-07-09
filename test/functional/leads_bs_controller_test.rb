require 'test_helper'

class LeadsBsControllerTest < ActionController::TestCase
  setup do
    @leads_b = leads_bs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leads_bs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leads_b" do
    assert_difference('LeadsB.count') do
      post :create, leads_b: { Address1: @leads_b.Address1, Address2: @leads_b.Address2, Address3: @leads_b.Address3, Address4: @leads_b.Address4, Address5: @leads_b.Address5, Address6: @leads_b.Address6, Distance: @leads_b.Distance, FirstName: @leads_b.FirstName, HomePhone: @leads_b.HomePhone, LastName: @leads_b.LastName, Postcode: @leads_b.Postcode, Price: @leads_b.Price, Price: @leads_b.Price, Title: @leads_b.Title, gmap: @leads_b.gmap, latitude: @leads_b.latitude, latitude: @leads_b.latitude, longitude: @leads_b.longitude, longitude: @leads_b.longitude }
    end

    assert_redirected_to leads_b_path(assigns(:leads_b))
  end

  test "should show leads_b" do
    get :show, id: @leads_b
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leads_b
    assert_response :success
  end

  test "should update leads_b" do
    put :update, id: @leads_b, leads_b: { Address1: @leads_b.Address1, Address2: @leads_b.Address2, Address3: @leads_b.Address3, Address4: @leads_b.Address4, Address5: @leads_b.Address5, Address6: @leads_b.Address6, Distance: @leads_b.Distance, FirstName: @leads_b.FirstName, HomePhone: @leads_b.HomePhone, LastName: @leads_b.LastName, Postcode: @leads_b.Postcode, Price: @leads_b.Price, Price: @leads_b.Price, Title: @leads_b.Title, gmap: @leads_b.gmap, latitude: @leads_b.latitude, latitude: @leads_b.latitude, longitude: @leads_b.longitude, longitude: @leads_b.longitude }
    assert_redirected_to leads_b_path(assigns(:leads_b))
  end

  test "should destroy leads_b" do
    assert_difference('LeadsB.count', -1) do
      delete :destroy, id: @leads_b
    end

    assert_redirected_to leads_bs_path
  end
end
