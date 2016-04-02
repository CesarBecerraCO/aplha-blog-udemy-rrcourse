class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      #Adicionar los campos:
      t.string :name
      t.timestamps
    end
  end
end
