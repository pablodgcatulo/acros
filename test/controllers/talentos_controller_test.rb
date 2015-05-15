require 'test_helper'

class TalentosControllerTest < ActionController::TestCase
  setup do
    @talento = talentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:talentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create talento" do
    assert_difference('Talento.count') do
      post :create, talento: { docx_json: @talento.docx_json, dominio_id: @talento.dominio_id, libro: @talento.libro, nombre: @talento.nombre, pelicula: @talento.pelicula }
    end

    assert_redirected_to talento_path(assigns(:talento))
  end

  test "should show talento" do
    get :show, id: @talento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @talento
    assert_response :success
  end

  test "should update talento" do
    patch :update, id: @talento, talento: { docx_json: @talento.docx_json, dominio_id: @talento.dominio_id, libro: @talento.libro, nombre: @talento.nombre, pelicula: @talento.pelicula }
    assert_redirected_to talento_path(assigns(:talento))
  end

  test "should destroy talento" do
    assert_difference('Talento.count', -1) do
      delete :destroy, id: @talento
    end

    assert_redirected_to talentos_path
  end
end
