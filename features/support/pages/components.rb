require 'rspec'

class Popup
    include Capybara::DSL
    include RSpec::Matchers
    
    def have_text (texto)
        popup = find('.swal2-html-container')
        expect(popup.text).to eql texto
    end
    
end