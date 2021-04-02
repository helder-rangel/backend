class Entrega < ApplicationRecord
  belongs_to :pedido
  belongs_to :endereco
end
