require 'test_helper'

class PartsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:parts)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_part
    assert_difference('Part.count') do
      post :create, :part => { }
    end

    assert_redirected_to part_path(assigns(:part))
  end

  def test_should_show_part
    get :show, :id => parts(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => parts(:one).id
    assert_response :success
  end

  def test_should_update_part
    put :update, :id => parts(:one).id, :part => { }
    assert_redirected_to part_path(assigns(:part))
  end

  def test_should_destroy_part
    assert_difference('Part.count', -1) do
      delete :destroy, :id => parts(:one).id
    end

    assert_redirected_to parts_path
  end
end
