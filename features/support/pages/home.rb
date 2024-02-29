class HomePage
    include Capybara::DSL
    
    def open
        visit 'https://starbugs-qa.vercel.app/'
    end

    def coffee_list
        return all('.coffee-item')
    end

    def buy (coffee_name)
        # buscar o elemento com a classe que tenha um texto especifico
        product = find('.coffee-item', text: coffee_name)
        product.find('.buy-coffee').click
    end

end