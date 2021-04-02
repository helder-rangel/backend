class Endereco < ApplicationRecord
    belongs_to :user
    has_many :entregas, dependent: :destroy
end
