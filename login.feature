            #language: pt
            Funcionalidade: Tela de login
            Como aluno da EBAC Shop
            quero fazer o login
            para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a pagina de Autenticacao da loja EBAC

            Cenario: Autenticacao valida
            Quando eu digitar o usuario "bruno@ebac.com.br"
            E a senha "senha@123"
            Entao deve exibir uma mensagem de boas vindas "Ola Bruno"
            E ser direcionado para tela de checkout

            Cenario: Usuario ou senha invalidos
            Quando eu digitar o usuario "Carlos@ebac.com.br"
            E a senha "senha@123"
            Entao deve exibir uma mensagem de alerta: "Usuario ou Senha invalidos"

            Esquema do Cenario: Autenticar multiplos usuarios
            Quando eu digitar o <usuario>
            E a <senha>
            Entao deve eibir a <mensagem> de boas vindas
            E ser direcionado para a tela de checkout

            Exemplos:
            | usuario             | senha       | mensagem     |
            | "joao_@ebac.com.br"  | "teste@123" | "Ola Joao!"  |
            | "maria!@ebac.com.br" | "teste@123" | "Ola Maria!" |
            | "jos.e@ebac.com.br"  | "teste@123" | "Ola Jose!"  |