require 'test_helper'

class PropertiesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:properties)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_property
    assert_difference('Property.count') do
      post :create, :property => { }
    end

    assert_redirected_to property_path(assigns(:property))
  end

  def test_should_show_property
    get :show, :id => properties(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => properties(:one).id
    assert_response :success
  end

  def test_should_update_property
    put :update, :id => properties(:one).id, :property => { }
    assert_redirected_to property_path(assigns(:property))
  end

  def test_should_destroy_property
    assert_difference('Property.count', -1) do
      delete :destroy, :id => properties(:one).id
    end

    assert_redirected_to properties_path
  end
end
