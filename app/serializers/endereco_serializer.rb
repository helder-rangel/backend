class EnderecoSerializer < ActiveModel::Serializer
  attributes :id, :rua, :numero, :complemento, :cidade, :estado, :bairro
  has_one :user
end
