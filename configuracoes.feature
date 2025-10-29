# language: pt

Funcionalidade: Configuração de produtos
  Como um administrador da loja
  Quero configurar as opções dos produtos
  Para que eles sejam exibidos corretamente aos clientes

  Contexto:
    Dado que o administrador está logado e acessou a página de configuração de produtos

  Cenário: Atualizar informações de um produto com sucesso
    Quando o administrador alterar o nome, preço e categoria do produto e clicar em "Salvar"
    Então o sistema deve exibir a mensagem "Produto atualizado com sucesso"

  Cenário: Tentar salvar produto sem nome
    Quando o administrador deixar o campo de nome em branco e clicar em "Salvar"
    Então o sistema deve exibir a mensagem "O campo nome é obrigatório"

  Cenário: Adicionar uma nova variação ao produto
    Quando o administrador selecionar "cor", "tamanho" e "quantidade" e clicar em "Adicionar variação"
    Então o sistema deve exibir a mensagem "Variação adicionada com sucesso"

  Esquema do Cenário: Configurar produto com dados inválidos
    Quando o administrador preencher o campo "<campo>" com valor inválido e clicar em "Salvar"
    Então o sistema deve exibir a mensagem "<mensagem>"

    Exemplos:
      | campo     | mensagem                           |
      | preço     | "Informe um valor numérico válido" |
      | categoria | "Selecione uma categoria válida"   |
