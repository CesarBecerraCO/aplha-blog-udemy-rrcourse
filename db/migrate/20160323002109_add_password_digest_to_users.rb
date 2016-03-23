class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    # Adicionar:
    add_column :users, :password_digest, :string
  end
end
