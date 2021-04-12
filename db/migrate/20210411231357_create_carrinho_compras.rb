class CreateCarrinhoCompras < ActiveRecord::Migration[6.1]
  def change
    create_table :carrinho_compras do |t|
      t.references :produto, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
