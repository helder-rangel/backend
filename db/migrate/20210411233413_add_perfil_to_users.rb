class AddPerfilToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :perfil, :string
  end
end
