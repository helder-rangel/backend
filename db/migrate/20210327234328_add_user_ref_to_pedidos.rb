class AddUserRefToPedidos < ActiveRecord::Migration[6.1]
  def change
    add_reference :pedidos, :user, null: false, foreign_key: true
  end
end
