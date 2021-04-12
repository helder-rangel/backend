class EntregaSerializer < ActiveModel::Serializer
  attributes :id, :meio, :custo
  has_one :pedido
  has_one :endereco
  has_one :user
end
