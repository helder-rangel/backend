class Pedido < ApplicationRecord
    belongs_to :user
    has_many :produtos, dependent: :destroy
    has_many :entregas, dependent: :destroy
end
