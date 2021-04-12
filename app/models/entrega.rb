class Entrega < ApplicationRecord
  belongs_to :pedido
  belongs_to :endereco
  belongs_to :user
end
