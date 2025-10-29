        # language: pt

Funcionalidade: Login no sistema
  Como um usuário cadastrado
  Quero acessar o sistema com meu e-mail e senha
  Para poder utilizar as funcionalidades disponíveis

  Contexto:
    Dado que o usuário está na página de login

  Cenário: Login com credenciais válidas
    Quando o usuário digitar o e-mail "usuario@teste.com"
    E digitar a senha "123456"
    E clicar no botão "Entrar"
    Então o sistema deve redirecionar para a página inicial
    E deve exibir a mensagem "Bem-vindo, usuário!"

  Cenário: Login com senha incorreta
    Quando o usuário digitar o e-mail "usuario@teste.com"
    E digitar a senha "senhaerrada"
    E clicar no botão "Entrar"
    Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"

  Esquema do Cenário: Login com campos inválidos
    Quando o usuário digitar o e-mail "<email>"
    E digitar a senha "<senha>"
    E clicar no botão "Entrar"
    Então o sistema deve exibir a mensagem "<mensagem>"

    Exemplos:
      | email              | senha     | mensagem                       |
      | ""                 | ""        | "Preencha todos os campos"     |
      | "usuario@teste.com"| ""        | "Informe a senha"              |
      | ""                 | "123456"  | "Informe o e-mail"             |
