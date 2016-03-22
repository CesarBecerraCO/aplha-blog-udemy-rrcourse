class AddUserIdToArticles < ActiveRecord::Migration
  def change
    # Esto lo adicionamos manualmente:
    add_column :articles, :user_id, :integer
  end
end
