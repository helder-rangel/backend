class AddUserRefToProdutos < ActiveRecord::Migration[6.1]
  def change
    add_reference :produtos, :user, null: false, foreign_key: true
  end
end
