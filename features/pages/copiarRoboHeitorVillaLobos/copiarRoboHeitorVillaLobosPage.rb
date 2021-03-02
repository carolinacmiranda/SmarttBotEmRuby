require_relative '../../bases/page_base.rb'

class CopiarRoboHeitorVillaLobosPage < PageBase
    
    element :abaRanking, "#sidebar-menu-item-scoreboard"
    element :clickPesquisar, :css, "svg[data-icon='search']"
    element :preencherNome, :css, "input[placeholder='Buscar pelo nome do Robô']"
    element :clickBuscar, :xpath, "//button[text()='Buscar']"
    element :clickCopiar, :css, "svg[viewBox='0 0 13 13']"
    element :clickModoSimulado, "#Path_1186"
    element :clickSimulador, "#select-simulation_type"
    element :clickPessimista, :xpath, "//li[text()='Pessimista (recomendado)']"
    element :clickContinuar, "#next-step-button"

    def clicarNaAbaRanking
        click :abaRanking
    end
    
    def acessarRanking
        visit 'https://app.smarttbot.com/private/ranking'
    end

    def clicarEmPesquisar
        wait_until_clickPesquisar_visible
        click :clickPesquisar
    end

    def digitarNomeDoRobo roboHeitor
        send_keys :preencherNome, roboHeitor
    end

    def clicarEmBuscar
        click :clickBuscar
    end

    def clicarEmCopiar
        click :clickCopiar
    end

    def clicarEmModoSimulado
        click :clickModoSimulado
    end

    def clicarEmSimulador
        click :clickSimulador
        click :clickPessimista
    end

    def clicarEmContinuar
        click :clickContinuar
    end

end