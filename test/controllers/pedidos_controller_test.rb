require "test_helper"

class PedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pedido = pedidos(:one)
  end

  test "should get index" do
    get pedidos_url, as: :json
    assert_response :success
  end

  test "should create pedido" do
    assert_difference('Pedido.count') do
      post pedidos_url, params: { pedido: { produto_id: @pedido.produto_id, quantidade: @pedido.quantidade, user_id: @pedido.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show pedido" do
    get pedido_url(@pedido), as: :json
    assert_response :success
  end

  test "should update pedido" do
    patch pedido_url(@pedido), params: { pedido: { produto_id: @pedido.produto_id, quantidade: @pedido.quantidade, user_id: @pedido.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy pedido" do
    assert_difference('Pedido.count', -1) do
      delete pedido_url(@pedido), as: :json
    end

    assert_response 204
  end
end
