require 'test_helper'

class Cat01sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cat01 = cat01s(:one)
  end

  test "should get index" do
    get cat01s_url
    assert_response :success
  end

  test "should get new" do
    get new_cat01_url
    assert_response :success
  end

  test "should create cat01" do
    assert_difference('Cat01.count') do
      post cat01s_url, params: { cat01: { Codigo: @cat01.Codigo, Descripcion: @cat01.Descripcion } }
    end

    assert_redirected_to cat01_url(Cat01.last)
  end

  test "should show cat01" do
    get cat01_url(@cat01)
    assert_response :success
  end

  test "should get edit" do
    get edit_cat01_url(@cat01)
    assert_response :success
  end

  test "should update cat01" do
    patch cat01_url(@cat01), params: { cat01: { Codigo: @cat01.Codigo, Descripcion: @cat01.Descripcion } }
    assert_redirected_to cat01_url(@cat01)
  end

  test "should destroy cat01" do
    assert_difference('Cat01.count', -1) do
      delete cat01_url(@cat01)
    end

    assert_redirected_to cat01s_url
  end
end
