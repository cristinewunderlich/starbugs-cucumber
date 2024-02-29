#language: pt

#agora o desenvolvedor devolveu após usar a feature


Funcionalidade: Uso de Cupons no Checkout

    Como um usuário da Starbugs, Eu quero poder aplicar cupons de desconto na página de checkout, 
    Para que eu possa obter reduções no preço de produtos específicos, aumentando a satisfação com a minha experiência de compra.

    Contexto:
    
    Dado que iniciei a compra do item:
            | name     | Café com Leite|
            | price    | R$ 19,99      |
            | delivery | R$ 10,00      |
            | total    | R$ 29,99      |

    Cenario: Aplicar Desconto de 20%
    
        Quando aplico do seguinte cupom: "MEUCAFE"
        Então o valor final da compra deve ser atualizado para "R$ 25,99"

    # Cenario: Cupom Expirado

    # Quando aplico do seguinte cupom: "PROMO20"
    # Então devo ver a notificação: "Cupom expirado!"
    #     E o valor final da compra deve permanecer o mesmo

    # Cenario:Cupom Inválido

    # Quando aplico do seguinte cupom: "CUPOMQA"
    # Então devo ver a notificação: "Cupom incorreto!"
    #     E o valor final da compra deve permanecer o mesmo

    Esquema do Cenario: Tentativa de aplicar o desconto

        Quando aplico do seguinte cupom: "<cupom>"
        Então devo ver a notificação: "<mensagem>"
        E o valor final da compra deve permanecer o mesmo

        Exemplos:
        | cupom   | mensagem         |
        | PROMO20 | Cupom expirado!  |
        | CUPOMQA | Cupom incorreto! |