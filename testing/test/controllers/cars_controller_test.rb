require 'test_helper'

class CarsControllerTest < ActionController::TestCase

  # called before every single test
  setup do
    @car = cars(:one)
  end

  # called after every single test
  def teardown
     # as we are re-initializing @article before every test
     # setting it to nil here is not essential but I hope
     # you understand how you can use the teardown method
     @article = nil
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cars)
  end

  test "should get last car" do
    get :last
    assert_response :success
    assert_not_nil assigns(:car)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post :create, car: { name: @car.name, speed: @car.speed, age: @car.age }
    end

    assert_redirected_to car_path(assigns(:car))
  end

  test "should show car" do
    get :show, id: @car
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car
    assert_response :success
  end

  test "should update car" do
    patch :update, id: @car, car: { name: @car.name, speed: @car.speed }
    assert_redirected_to car_path(assigns(:car))
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete :destroy, id: @car
    end

    assert_redirected_to cars_path
  end
# ========= VIEWS ==============
  test "should display title" do
    get :index
    assert_select 'title', "Welcome into Rails Testing Guide"
  end

  test "should display " do
    get :index
    assert_select "table tbody tr",2
  end

end
