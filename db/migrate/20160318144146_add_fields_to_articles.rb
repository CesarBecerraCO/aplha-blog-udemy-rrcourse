class AddFieldsToArticles < ActiveRecord::Migration
  def change
    #Aquí manualmente definimos las nuevas columnas
    add_column :articles, :description, :text
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
