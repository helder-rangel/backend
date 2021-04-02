class ProdutoSerializer < ActiveModel::Serializer
  attributes :id, :peso, :comprimento, :altura, :imagem, :descricao, :descricao_curta, :preco, :fabricante, :categoria
  has_one :pedido
end
