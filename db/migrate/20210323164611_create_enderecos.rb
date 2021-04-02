class CreateEnderecos < ActiveRecord::Migration[6.1]
  def change
    create_table :enderecos do |t|
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :cidade
      t.string :estado
      t.string :bairro
      t.string :cep

      t.timestamps
    end
  end
end
