require 'test_helper'

class VenturesControllerTest < ActionController::TestCase
  setup do
    @venture = ventures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ventures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venture" do
    assert_difference('Venture.count') do
      post :create, venture: { description: @venture.description, founded: @venture.founded, founder: @venture.founder, location: @venture.location, name: @venture.name, num_employees: @venture.num_employees, org_type: @venture.org_type, sector: @venture.sector }
    end

    assert_redirected_to venture_path(assigns(:venture))
  end

  test "should show venture" do
    get :show, id: @venture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venture
    assert_response :success
  end

  test "should update venture" do
    put :update, id: @venture, venture: { description: @venture.description, founded: @venture.founded, founder: @venture.founder, location: @venture.location, name: @venture.name, num_employees: @venture.num_employees, org_type: @venture.org_type, sector: @venture.sector }
    assert_redirected_to venture_path(assigns(:venture))
  end

  test "should destroy venture" do
    assert_difference('Venture.count', -1) do
      delete :destroy, id: @venture
    end

    assert_redirected_to ventures_path
  end
end
