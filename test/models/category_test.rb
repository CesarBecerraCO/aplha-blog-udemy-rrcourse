require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  #Inicializar un objeto tipo Category (deberá existir model, controller and table)
  def setup
    @category = Category.new(name: "sports")
  end
  
  #Definiremos 5 Casos de prueba "test", ver explicación en las OneNote
  test "category should be valid" do
    assert @category.valid?
  end
  
  test "name should be present" do
    @category.name = " "
    assert_not @category.valid?
  end
  
  test "name should be unique" do
    @category.save
    category2 = Category.new(name: "sports")
    assert_not category2.valid?
  end
  
  test "name should not be too long" do
    @category.name = "a" * 26
    assert_not @category.valid?
  end
  
  test "name should not be too short" do
    @category.name = "aa"
    assert_not @category.valid?
  end
end