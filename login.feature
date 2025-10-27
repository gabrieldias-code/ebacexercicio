            #language: pt

            Funcionalidade: Tela de Login
            Como aluno do Portal EBAC
            Quero me autenticar
            Para visualizar minhas notas

            Contexto:
            Dado que eu acesse o portal EBAC

            Cenário: Autenticação Válida
            Quando eu digitar o usuario "niggerballs@ebac.com.br"
            E a senha "123"
            Então deve exibir uma mensagem de boas vindas "ola niggerballs"

            Cenário: Usuario Inexistente
            Quando eu digitar o usuario "whiteballs@ebac.com.br"
            E a senha "123"
            Então deve exibir uma mensagem de alerta "Usuario Inexistente"

            Cenário: Usuario com Cena Inválida
            Quando eu digitar o usuario "niggerballs@ebac.com.br"
            E a senha "lol"
            Então deve exibir uma mensagem de alerta "Senha Inválida"

            Esquema do Cenário: Autenticar Multiplos Usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario                   | senha | mensagem          |
            | "niggerballs@ebac.com.br" | "123" | "ola niggerballs" |
            | "niggerballs@ebac.com.br" | "123" | "ola niggerballs" |
            | "niggerballs@ebac.com.br" | "123" | "ola niggerballs" |