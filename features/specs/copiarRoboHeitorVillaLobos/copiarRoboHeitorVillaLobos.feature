#language:pt
@web
Funcionalidade: [SITE] - Copiar parâmetros do robô Heitor Villa-Lobos

    @ranking
    Cenario: 1 - Ir até a página de Ranking
        Dado que estou logado no site da SmarttBot
        Quando clico na aba Ranking
        Então devo ver o ranking de todos os robôs

    @pesquisarRobo
    Cenario: 2 - Encontrar robô Heitor Villa-Lobos 
        Dado que estou na página de Ranking de robôs
        Quando clico em pesquisar
        E digito o nome do robô 'Heitor Villa-Lobos'
        E clico em buscar por robô
        Então deve aparecer o robô Heitor Villa-Lobos para mim
    
    @botaoCopiar
    Cenario: 3 - Clicar no botão Copiar robô
        Dado que estou na página de Ranking de robôs
        Quando clico no botão Copiar do robô Heitor Villa-Lobos
        Então uma nova janela deve abrir para a configuração da cópia do robô 

    @duplicarRobo
    Cenario: 4 - Clicar no botão Copiar robô
        Dado que estou na página de Ranking de robôs
        Quando clico no botão Copiar do robô Heitor Villa-Lobos
        E clico na opção Modo Simulado
        E mudo para Pessimista na opção Simulador
        E clico no ícone seta à direita para continuar
        Então o robô Heitor Villa-Lobos deve ser duplicado com sucesso