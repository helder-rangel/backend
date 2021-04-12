class PedidoSerializer < ActiveModel::Serializer
  attributes :id, :quantidade
  has_one :produto
  has_one :user
end
