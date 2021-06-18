# language: pt

@carrinho_de_compras
Funcionalidade: Carrinho de compras
  Eu como cliente 
  Quero poder escolher e finalizar a compra
  Para eu receber os produtos na minha casa

  Contexto:
    Dado que estou logada com credenciais "válidas"

    Cenário: Adicionar um item ao carrinho
      Dado que estou na tela de um produto
      Quando adiciono o produto no carrinho
      Então vejo uma mensagem de confirmação

    Cenário: Ser possível escolher um endereço de entrega
      Dado estou na tela de resumo da compra
      Quando avançar para a tela de endereço
      Então vejo endereços de entrega disponíveis

    Cenário: Ser possível escolher uma opção de pagamento
      Dado que estou na tela de envio do produto
      Quando avançar para a tela de pagamento
      Então vejo as opções de pagamento disponíveis

    Cenário: Comprar um item
      Dado que tenha escolhido um produto
      Quando fizer a compra
      Então vejo mensagem de confirmação da compra
      