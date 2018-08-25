require 'test_helper'

class Cat02sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cat02 = cat02s(:one)
  end

  test "should get index" do
    get cat02s_url
    assert_response :success
  end

  test "should get new" do
    get new_cat02_url
    assert_response :success
  end

  test "should create cat02" do
    assert_difference('Cat02.count') do
      post cat02s_url, params: { cat02: { Codigo: @cat02.Codigo, Descripcion: @cat02.Descripcion } }
    end

    assert_redirected_to cat02_url(Cat02.last)
  end

  test "should show cat02" do
    get cat02_url(@cat02)
    assert_response :success
  end

  test "should get edit" do
    get edit_cat02_url(@cat02)
    assert_response :success
  end

  test "should update cat02" do
    patch cat02_url(@cat02), params: { cat02: { Codigo: @cat02.Codigo, Descripcion: @cat02.Descripcion } }
    assert_redirected_to cat02_url(@cat02)
  end

  test "should destroy cat02" do
    assert_difference('Cat02.count', -1) do
      delete cat02_url(@cat02)
    end

    assert_redirected_to cat02s_url
  end
end
