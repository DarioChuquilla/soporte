require 'test_helper'

class IncidenciaControllerTest < ActionController::TestCase
  setup do
    @incidencium = incidencia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incidencia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incidencium" do
    assert_difference('Incidencium.count') do
      post :create, incidencium: { codigo_error: @incidencium.codigo_error, departamento_id_id: @incidencium.departamento_id_id, descripcion: @incidencium.descripcion, descripcion_estado: @incidencium.descripcion_estado, descripcion_solucion: @incidencium.descripcion_solucion, estado: @incidencium.estado, fecha_error: @incidencium.fecha_error, fecha_escalamiento: @incidencium.fecha_escalamiento, fuente_error: @incidencium.fuente_error, responsable_cierre_id_id: @incidencium.responsable_cierre_id_id, responsable_id_id: @incidencium.responsable_id_id, tipo_error: @incidencium.tipo_error }
    end

    assert_redirected_to incidencium_path(assigns(:incidencium))
  end

  test "should show incidencium" do
    get :show, id: @incidencium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incidencium
    assert_response :success
  end

  test "should update incidencium" do
    patch :update, id: @incidencium, incidencium: { codigo_error: @incidencium.codigo_error, departamento_id_id: @incidencium.departamento_id_id, descripcion: @incidencium.descripcion, descripcion_estado: @incidencium.descripcion_estado, descripcion_solucion: @incidencium.descripcion_solucion, estado: @incidencium.estado, fecha_error: @incidencium.fecha_error, fecha_escalamiento: @incidencium.fecha_escalamiento, fuente_error: @incidencium.fuente_error, responsable_cierre_id_id: @incidencium.responsable_cierre_id_id, responsable_id_id: @incidencium.responsable_id_id, tipo_error: @incidencium.tipo_error }
    assert_redirected_to incidencium_path(assigns(:incidencium))
  end

  test "should destroy incidencium" do
    assert_difference('Incidencium.count', -1) do
      delete :destroy, id: @incidencium
    end

    assert_redirected_to incidencia_path
  end
end
