require_relative "../../bases/page_base.rb"

class LoginSmarttBotValidationPage < PageBase

    element :paginaLogada, '#HomePage'
    

    def estouLogado?
        elemento_visivel? :paginaLogada  
    end

end