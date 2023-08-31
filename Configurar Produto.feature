            #language: pt

            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto: Dado que eu acesse a loja da EBAC

            Cenario: Selecao de cor
            Quando eu selecionar o produto
            Entao a cor do produto tambem deve ser escolhida

            Cenario: Selecao de tamanho
            Quando eu selecionar o produto
            Entao o tamanho do produto deve ser escolhido

            Cenario: Selecao de quantidade
            Quando eu selecionar o produto
            Entao a quantidade do produto deve ser escolhida

            Cenario: Numero de Produtos por venda
            Quando o numero de produtos no carrinho for >10
            Entao uma mensagem de alerta "Numero maximo por venda atingido"
            devera ser exibida

            Esquema do Cenario: Limitacao de Venda
            Quando houver <numero> produtos no carrinho
            Entao uma <mensagem> sera exibida

            Exemplos:
            | Numero de produtos |  | Mensagem                                        |
            | 1                  |  | Produto adicionado com sucesso                  |
            | 2                  |  | Produto adicionado com sucesso                  |
            | 3                  |  | Produto adicionado com sucesso                  |
            | 4                  |  | Produto adicionado com sucesso                  |
            | 5                  |  | Produto adicionado com sucesso                  |
            | 6                  |  | Produto adicionado com sucesso                  |
            | 7                  |  | Produto adicionado com sucesso                  |
            | 8                  |  | Produto adicionado com sucesso                  |
            | 9                  |  | Produto adicionado com sucesso                  |
            | 10                 |  | Produto adicionado com sucesso                  |
            | 11                 |  | Numero de produtos no carrinho atingiu o limite |

            Cenario: Botao Limpar
            Quando eu clicar no botao Limpar
            Entao o carrinho devera voltar ao estado original
            E a mensagem "Seu carrinho esta vazio" devera ser exibida