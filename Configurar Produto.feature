            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto: Dado que eu acesse a loja da EBAC

            Esquema do Cenario: Configuracao do produto invalida
            Quando eu selecionar a <cor>
            E o <tamanho>
            E a <quantidade>
            Entao a <mensagem> de alerta devera ser exibida

            Exemplos:
            | Cor         |  | Tamanho     |  | Quantidade  |  | Mensagem               |
            | Azul        |  | Pequeno     |  | Campo Vazio |  | Selecione a quantidade |
            | Campo Vazio |  | Grande      |  | 3           |  | Selecione a cor        |
            | Amarelo     |  | Campo Vazio |  | 2           |  | Selecione o tamanho    |

            Esquema do Cenario: Numero maximo permitido de Venda
            Quando houver <numero> produtos no carrinho
            E sendo este numero nao maior do que 10
            E nao menor do que 1
            Entao uma <mensagem> sera exibida

            Exemplos:
            | Numero de produtos |  | Mensagem                                        |                 |
            | 9                  |  | Produto adicionado com sucesso                  |
            | 10                 |  | Produto adicionado com sucesso                  |
            | 11                 |  | Numero de produtos no carrinho atingiu o limite |

Cenario: Botao Limpar
Quando eu clicar no botao Limpar
Entao o carrinho devera voltar ao estado original
E a mensagem "Seu carrinho esta vazio" devera ser exibida