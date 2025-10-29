# language: pt

Funcionalidade: Finalização de compra
  Como um cliente logado
  Quero finalizar minha compra
  Para receber meus produtos corretamente

  Contexto:
    Dado que o cliente possui produtos no carrinho e está logado no sistema

  Cenário: Finalização de compra bem-sucedida
    Quando o cliente clicar em "Finalizar compra", preencher o endereço e selecionar a forma de pagamento "Cartão de crédito"
    Então o sistema deve confirmar o pedido e exibir a mensagem "Compra realizada com sucesso!"

  Esquema do Cenário: Tentativa de compra com dados incompletos
    Quando o cliente clicar em "Finalizar compra" sem preencher o campo "<campo>"
    Então o sistema deve exibir a mensagem "<mensagem>"

    Exemplos:
      | campo              | mensagem                         |
      | Endereço           | "Informe o endereço de entrega"  |
      | Forma de pagamento | "Selecione a forma de pagamento" |
