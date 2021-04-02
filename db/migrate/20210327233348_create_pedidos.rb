class CreatePedidos < ActiveRecord::Migration[6.1]
  def change
    create_table :pedidos do |t|
      t.string :itens
      t.float :frete

      t.timestamps
    end
  end
end
