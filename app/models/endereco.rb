class Endereco < ApplicationRecord
  belongs_to :user
  has_many :entrega, dependent: :destroy
end
