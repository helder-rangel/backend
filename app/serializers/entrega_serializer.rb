class EntregaSerializer < ActiveModel::Serializer
  attributes :id, :meio_de_envio, :custo
  has_one :pedido
  has_one :endereco
end
