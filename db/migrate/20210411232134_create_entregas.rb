class CreateEntregas < ActiveRecord::Migration[6.1]
  def change
    create_table :entregas do |t|
      t.string :meio
      t.float :custo
      t.references :pedido, null: false, foreign_key: true
      t.references :endereco, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
