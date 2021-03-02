require_relative '../../bases/page_base.rb'

class SalvarEDarPlayRoboHeitorVillaLobosValidationPage < PageBase

    element :roboSalvo, :xpath, "//h4[text()='Sucesso!']"
    element :roboIniciado, :xpath, "//h4[text()='Sucesso!']"

    def roboSalvoComSucesso?
        elemento_visivel? :roboSalvo
    end

    def roboIniciadoComSucesso?
        elemento_visivel? :roboIniciado
    end

end
