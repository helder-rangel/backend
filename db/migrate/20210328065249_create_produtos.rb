class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.float :peso
      t.float :comprimento
      t.float :altura
      t.string :imagem
      t.string :descricao
      t.string :descricao_curta
      t.float :preco
      t.string :fabricante
      t.string :categoria
      t.references :pedido, null: false, foreign_key: true

      t.timestamps
    end
  end
end
