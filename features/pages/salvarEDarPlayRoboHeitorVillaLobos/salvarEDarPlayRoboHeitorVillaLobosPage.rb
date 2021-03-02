require_relative '../../bases/page_base.rb'

class SalvarEDarPlayRoboHeitorVillaLobosPage < PageBase

    element :clickOk, :xpath, "//span[text()='Ok']"
    element :clickSalvar, "#save-instance-params"
    element :salvarParametros, :xpath, "//span[text()='Salvar']"
    element :iniciarRobo, :css, "svg[data-icon='play']"

    def clicarEmSalvar
        click :clickOk
        click :clickSalvar
        click :salvarParametros
    end

    def clicarEmIniciarRobo
        click :iniciarRobo
    end

end