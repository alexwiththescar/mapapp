require 'test_helper'

class LeadsAsControllerTest < ActionController::TestCase
  setup do
    @leads_a = leads_as(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leads_as)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leads_a" do
    assert_difference('LeadsA.count') do
      post :create, leads_a: { Address1: @leads_a.Address1, Address2: @leads_a.Address2, Address3: @leads_a.Address3, Address4: @leads_a.Address4, Address5: @leads_a.Address5, Address6: @leads_a.Address6, FirstName: @leads_a.FirstName, HomePhone: @leads_a.HomePhone, LastName: @leads_a.LastName, Postcode: @leads_a.Postcode, Price: @leads_a.Price, Title: @leads_a.Title }
    end

    assert_redirected_to leads_a_path(assigns(:leads_a))
  end

  test "should show leads_a" do
    get :show, id: @leads_a
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leads_a
    assert_response :success
  end

  test "should update leads_a" do
    put :update, id: @leads_a, leads_a: { Address1: @leads_a.Address1, Address2: @leads_a.Address2, Address3: @leads_a.Address3, Address4: @leads_a.Address4, Address5: @leads_a.Address5, Address6: @leads_a.Address6, FirstName: @leads_a.FirstName, HomePhone: @leads_a.HomePhone, LastName: @leads_a.LastName, Postcode: @leads_a.Postcode, Price: @leads_a.Price, Title: @leads_a.Title }
    assert_redirected_to leads_a_path(assigns(:leads_a))
  end

  test "should destroy leads_a" do
    assert_difference('LeadsA.count', -1) do
      delete :destroy, id: @leads_a
    end

    assert_redirected_to leads_as_path
  end
end
