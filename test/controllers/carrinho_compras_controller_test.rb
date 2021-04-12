require "test_helper"

class CarrinhoComprasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrinho_compra = carrinho_compras(:one)
  end

  test "should get index" do
    get carrinho_compras_url, as: :json
    assert_response :success
  end

  test "should create carrinho_compra" do
    assert_difference('CarrinhoCompra.count') do
      post carrinho_compras_url, params: { carrinho_compra: { produto_id: @carrinho_compra.produto_id, user_id: @carrinho_compra.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show carrinho_compra" do
    get carrinho_compra_url(@carrinho_compra), as: :json
    assert_response :success
  end

  test "should update carrinho_compra" do
    patch carrinho_compra_url(@carrinho_compra), params: { carrinho_compra: { produto_id: @carrinho_compra.produto_id, user_id: @carrinho_compra.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy carrinho_compra" do
    assert_difference('CarrinhoCompra.count', -1) do
      delete carrinho_compra_url(@carrinho_compra), as: :json
    end

    assert_response 204
  end
end
