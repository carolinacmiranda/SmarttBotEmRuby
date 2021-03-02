#language:pt
@web
Funcionalidade: [SITE] - Salvar e dar play ao robô Heitor Villa-Lobos

    @salvarRobo
    Cenario: 1 - Salvar parâmetros do robô Heitor Villa-Lobos
        Dado que já dupliquei o robô Heitor Villa-Lobos
        Quando clico no botão Salvar
        Então os parâmetros do robô duplicado devem ser salvos

    @iniciarRobo
    Cenario: 2 - Dar play no robô Heitor Villa-Lobos
        Dado que já dupliquei o robô Heitor Villa-Lobos
        Quando clico no botão Salvar
        E clico no botão Iniciar
        Então o robô deve começar a executar a operação