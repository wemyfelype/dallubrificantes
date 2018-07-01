require 'test_helper'

class ProductValuesControllerTest < ActionController::TestCase
  setup do
    @product_value = product_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_value" do
    assert_difference('ProductValue.count') do
      post :create, product_value: { fl_status: @product_value.fl_status, product_id: @product_value.product_id, qt_stock: @product_value.qt_stock, vl_purchase_uni: @product_value.vl_purchase_uni, vl_sale_uni: @product_value.vl_sale_uni }
    end

    assert_redirected_to product_value_path(assigns(:product_value))
  end

  test "should show product_value" do
    get :show, id: @product_value
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_value
    assert_response :success
  end

  test "should update product_value" do
    patch :update, id: @product_value, product_value: { fl_status: @product_value.fl_status, product_id: @product_value.product_id, qt_stock: @product_value.qt_stock, vl_purchase_uni: @product_value.vl_purchase_uni, vl_sale_uni: @product_value.vl_sale_uni }
    assert_redirected_to product_value_path(assigns(:product_value))
  end

  test "should destroy product_value" do
    assert_difference('ProductValue.count', -1) do
      delete :destroy, id: @product_value
    end

    assert_redirected_to product_values_path
  end
end
