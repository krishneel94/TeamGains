require 'test_helper'

class GainsPagesControllerTest < ActionController::TestCase
  setup do
    @gains_page = gains_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gains_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gains_page" do
    assert_difference('GainsPage.count') do
      post :create, gains_page: { body: @gains_page.body, title: @gains_page.title }
    end

    assert_redirected_to gains_page_path(assigns(:gains_page))
  end

  test "should show gains_page" do
    get :show, id: @gains_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gains_page
    assert_response :success
  end

  test "should update gains_page" do
    patch :update, id: @gains_page, gains_page: { body: @gains_page.body, title: @gains_page.title }
    assert_redirected_to gains_page_path(assigns(:gains_page))
  end

  test "should destroy gains_page" do
    assert_difference('GainsPage.count', -1) do
      delete :destroy, id: @gains_page
    end

    assert_redirected_to gains_pages_path
  end
end
