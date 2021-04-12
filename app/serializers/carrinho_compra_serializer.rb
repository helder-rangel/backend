class CarrinhoCompraSerializer < ActiveModel::Serializer
  attributes :id
  has_one :produto
  has_one :user
end
