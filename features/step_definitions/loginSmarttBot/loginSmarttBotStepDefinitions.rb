Dado("que acesso a url do site SmarttBot") do
    loginAppSmarttBotPage.acessarPaginaSmarttBot
end
  
Quando("insiro usuário {string}") do |username|
    loginAppSmarttBotPage.preencherUsername username
end

E("senha já cadastrados {string}") do |password|
    loginAppSmarttBotPage.preencherPassword password
end

E("clico para acessar o site") do
    loginAppSmarttBotPage.clicarEmAcessar
end

Então("devo ser autenticado na plataforma com sucesso") do
    expect(loginSmarttBotValidationPage.estouLogado?).to eq true
end