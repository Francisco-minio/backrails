require "test_helper"

class EstablecimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @establecimiento = establecimientos(:one)
  end

  test "should get index" do
    get establecimientos_url, as: :json
    assert_response :success
  end

  test "should create establecimiento" do
    assert_difference('Establecimiento.count') do
      post establecimientos_url, params: { establecimiento: { ciudad: @establecimiento.ciudad, direccion: @establecimiento.direccion, director: @establecimiento.director, email: @establecimiento.email, nombre: @establecimiento.nombre, rbd: @establecimiento.rbd, telefono: @establecimiento.telefono } }, as: :json
    end

    assert_response 201
  end

  test "should show establecimiento" do
    get establecimiento_url(@establecimiento), as: :json
    assert_response :success
  end

  test "should update establecimiento" do
    patch establecimiento_url(@establecimiento), params: { establecimiento: { ciudad: @establecimiento.ciudad, direccion: @establecimiento.direccion, director: @establecimiento.director, email: @establecimiento.email, nombre: @establecimiento.nombre, rbd: @establecimiento.rbd, telefono: @establecimiento.telefono } }, as: :json
    assert_response 200
  end

  test "should destroy establecimiento" do
    assert_difference('Establecimiento.count', -1) do
      delete establecimiento_url(@establecimiento), as: :json
    end

    assert_response 204
  end
end
