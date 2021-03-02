require_relative "../../bases/page_base.rb"

class CopiarRoboHeitorVillaLobosValidationPage < PageBase

    element :abaRanking, :xpath, "//div[@id='unified-ranking']"
    element :roboHeitor, :xpath, "//span[text()='Heitor Villa-Lobos']"
    element :novaJanela, :css, "div[class='jss225 jss251 jss233 jss245']"
    element :paginaRoboCriado, :xpath, "//h4[text()='Sucesso!']"
    
    def estouNaAbaRanking?
        elemento_visivel? :abaRanking
    end

    def roboHeitorVisivel?
        elemento_visivel? :roboHeitor
    end

    def novaJanelaAbriu?
        elemento_visivel? :novaJanela
    end

    def roboHeitorFoiDuplicado?
        elemento_visivel? :paginaRoboCriado
    end
end