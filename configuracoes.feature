# language: pt

Funcionalidade: Configuração de perfil
  Como um usuário autenticado
  Quero atualizar minhas informações de perfil
  Para manter meus dados sempre corretos

  Contexto:
    Dado que o usuário está logado
    E acessou a página de configurações de perfil

  Cenário: Atualizar nome e senha com sucesso
    Quando o usuário alterar o nome para "Gabriel Dias"
    E alterar a senha para "novaSenha123"
    E clicar em "Salvar"
    Então o sistema deve exibir a mensagem "Dados atualizados com sucesso!"

  Cenário: Tentar salvar sem preencher o nome
    Quando o usuário deixar o campo de nome em branco
    E clicar em "Salvar"
    Então o sistema deve exibir a mensagem "O campo nome é obrigatório"

  Esquema do Cenário: Atualizar informações com erros
    Quando o usuário preencher o campo de e-mail com "<email>"
    E clicar em "Salvar"
    Então o sistema deve exibir a mensagem "<mensagem>"

    Exemplos:
      | email                | mensagem                               |
      | "gabriel.com"        | "Informe um e-mail válido"             |
      | ""                   | "O campo e-mail é obrigatório"         |
