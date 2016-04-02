require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  
  #Requerido para crear un objeto category named "sports"
  def setup
    @category = Category.create(name: "sports")
  end
  
  test "should get categories index" do
    get :index
    assert_response :success
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should get show" do
    get(:show, {'id' => @category.id})
    assert_response :success
  end
end