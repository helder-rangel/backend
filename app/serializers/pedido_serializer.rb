class PedidoSerializer < ActiveModel::Serializer
  attributes :id, :itens, :frete
end
