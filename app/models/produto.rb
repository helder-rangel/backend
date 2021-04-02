class Produto < ApplicationRecord
  belongs_to :user
  belongs_to :pedido
end
