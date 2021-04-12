class Pedido < ApplicationRecord
  belongs_to :produto
  belongs_to :user
  has_many :entrega, dependent: :destroy
end
