Dir[File.join(File.dirname(__FILE__), "../pages/*/*_page.rb")].each { |file| require file }

module PageObjects
    
    def loginAppSmarttBotPage
      @loginAppSmarttBotPage ||= LoginAppSmarttBotPage.new
    end
    
    def loginSmarttBotValidationPage
      @loginSmarttBotValidationPage ||= LoginSmarttBotValidationPage.new
    end

    def copiarRoboHeitorVillaLobosPage
      @copiarRoboHeitorVillaLobosPage ||= CopiarRoboHeitorVillaLobosPage.new
    end

    def copiarRoboHeitorVillaLobosValidationPage
      @copiarRoboHeitorVillaLobosValidationPage ||= CopiarRoboHeitorVillaLobosValidationPage.new
    end

    def salvarEDarPlayRoboHeitorVillaLobosPage
      @salvarEDarPlayRoboHeitorVillaLobosPage ||= SalvarEDarPlayRoboHeitorVillaLobosPage.new
    end

    def salvarEDarPlayRoboHeitorVillaLobosValidationPage
      @salvarEDarPlayRoboHeitorVillaLobosValidationPage ||= SalvarEDarPlayRoboHeitorVillaLobosValidationPage.new
    end
end