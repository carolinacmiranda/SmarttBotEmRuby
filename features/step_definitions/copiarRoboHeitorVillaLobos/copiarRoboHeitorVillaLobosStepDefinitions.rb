Dado("que estou logado no site da SmarttBot") do
    loginAppSmarttBotPage.acessarPaginaSmarttBot
    loginAppSmarttBotPage.preencherUsername 'costacarol87'
    loginAppSmarttBotPage.preencherPassword 'Sm@rttB0t'
    loginAppSmarttBotPage.clicarEmAcessar
end
  
Quando("clico na aba Ranking") do 
    copiarRoboHeitorVillaLobosPage.clicarNaAbaRanking
end

Entao("devo ver o ranking de todos os robôs") do
    expect(copiarRoboHeitorVillaLobosValidationPage.estouNaAbaRanking?).to eq true
end

Dado("que estou na página de Ranking de robôs") do
    copiarRoboHeitorVillaLobosPage.acessarRanking
    loginAppSmarttBotPage.preencherUsername 'costacarol87'
    loginAppSmarttBotPage.preencherPassword 'Sm@rttB0t'
    loginAppSmarttBotPage.clicarEmAcessar
end
  
Quando("clico em pesquisar") do 
    copiarRoboHeitorVillaLobosPage.clicarEmPesquisar
end

E("digito o nome do robô {string}") do |roboHeitor|
    copiarRoboHeitorVillaLobosPage.digitarNomeDoRobo roboHeitor
end

E("clico em buscar por robô") do
    copiarRoboHeitorVillaLobosPage.clicarEmBuscar
end

Então("deve aparecer o robô Heitor Villa-Lobos para mim") do
    expect(copiarRoboHeitorVillaLobosValidationPage.roboHeitorVisivel?).to eq true
end

Quando("clico no botão Copiar do robô Heitor Villa-Lobos") do
    copiarRoboHeitorVillaLobosPage.clicarEmPesquisar
    copiarRoboHeitorVillaLobosPage.digitarNomeDoRobo 'Heitor Villa-Lobos'
    copiarRoboHeitorVillaLobosPage.clicarEmBuscar
    copiarRoboHeitorVillaLobosPage.clicarEmCopiar
end

Então("uma nova janela deve abrir para a configuração da cópia do robô") do
    expect(copiarRoboHeitorVillaLobosValidationPage.novaJanelaAbriu?).to eq true
end

E("clico na opção Modo Simulado") do
    copiarRoboHeitorVillaLobosPage.clicarEmModoSimulado
end

E("mudo para Pessimista na opção Simulador") do
    copiarRoboHeitorVillaLobosPage.clicarEmSimulador
end

E("clico no ícone seta à direita para continuar") do
    copiarRoboHeitorVillaLobosPage.clicarEmContinuar
end

Então("o robô Heitor Villa-Lobos deve ser duplicado com sucesso") do
    expect(copiarRoboHeitorVillaLobosValidationPage.roboHeitorFoiDuplicado?).to eq true
end