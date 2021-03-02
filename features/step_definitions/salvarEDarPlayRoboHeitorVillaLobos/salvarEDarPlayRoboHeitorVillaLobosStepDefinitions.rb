Dado("que já dupliquei o robô Heitor Villa-Lobos") do
    copiarRoboHeitorVillaLobosPage.acessarRanking
    loginAppSmarttBotPage.preencherUsername 'costacarol87'
    loginAppSmarttBotPage.preencherPassword 'Sm@rttB0t'
    loginAppSmarttBotPage.clicarEmAcessar
    copiarRoboHeitorVillaLobosPage.clicarEmPesquisar
    copiarRoboHeitorVillaLobosPage.digitarNomeDoRobo 'Heitor Villa-Lobos'
    copiarRoboHeitorVillaLobosPage.clicarEmBuscar
    copiarRoboHeitorVillaLobosPage.clicarEmCopiar
    copiarRoboHeitorVillaLobosPage.clicarEmModoSimulado
    copiarRoboHeitorVillaLobosPage.clicarEmSimulador
    copiarRoboHeitorVillaLobosPage.clicarEmContinuar
end

Quando("clico no botão Salvar") do
    salvarEDarPlayRoboHeitorVillaLobosPage.clicarEmSalvar
end

Então("os parâmetros do robô duplicado devem ser salvos") do
    expect(salvarEDarPlayRoboHeitorVillaLobosValidationPage.roboSalvoComSucesso?).to eq true
end

E("clico no botão Iniciar") do
    salvarEDarPlayRoboHeitorVillaLobosPage.clicarEmIniciarRobo
end

Então("o robô deve começar a executar a operação") do
    expect(salvarEDarPlayRoboHeitorVillaLobosValidationPage.roboIniciadoComSucesso?).to eq true
end