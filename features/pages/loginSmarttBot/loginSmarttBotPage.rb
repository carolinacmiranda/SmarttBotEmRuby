require_relative '../../bases/page_base.rb'

class LoginAppSmarttBotPage < PageBase
    
    element :loginUsername, "#login-username"
    element :loginPassword, "#login-password"
    element :loginButton, "#login-button"

    def acessarPaginaSmarttBot
        visit '@web'
    end
    
    def preencherUsername username
        send_keys :loginUsername, username
    end

    def preencherPassword password
        send_keys :loginPassword, password
    end

    def clicarEmAcessar
        click :loginButton
    end

end