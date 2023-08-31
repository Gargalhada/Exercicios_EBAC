 #language: pt

Funcionalidade: Checkout
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
 Para finalizar minha compra

Contexto: Dado que eu acesse a loja Ebac-Shop

Cenario: Prencher campos obrigatorios
Quando eu preencher todos os campos obrigatorios sinalizados pelo "*"
Entao o botao de conlcuir cadastro ficara disponivel

Cenario: Email Valido
Quando eu digitar o email "brunopassy@gmail.com"
Entao a mensagem "Email Valido!" devera ser exibida

Esquema do Cenario: Email Invalido
Quando eu digitar o <email>
Entao a <mensagem> devera ser exibida

Exemplos:
| Email                 | mensagem          |
| "joao_@ebac#.com.br"  | "Email Invalido!" |
| "maria!@ebac@.com.br" | "Email Invalido!" |
| "jos.eebac.com.br"    | "Email Invalido!" |
| "123@123.net"         | "Email Invalido!" |

Cenario: Campos Vazios
Quando um dos campos nao estiver preenchido
Entao a mensagem "Por favor, prencha todos os campos" devera ser exibida