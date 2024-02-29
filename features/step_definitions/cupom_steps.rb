Dado('que iniciei a compra do item:') do |table|
    @product = table.rows_hash
    @home.open
    @home.buy(@product[:name])
end

Quando('aplico do seguinte cupom: {string}') do |cupom_code|
    @checkout.set_discount(cupom_code)
end

Então('o valor final da compra deve ser atualizado para {string}') do |final_price|
    @checkout.assert_total_price(final_price)
end

Então('devo ver a notificação: {string}') do |notification|
    @checkout.assert_notice(notification)
end

Então('o valor final da compra deve permanecer o mesmo') do
    @checkout.assert_total_price(@product[:total])
end