#language:pt
@web
Funcionalidade: [SITE] - Logar no site da SmarttBot

    @login
    Cenario: 1 - Logar com usuário e senha no site SmarttBot
        Dado que acesso a url do site SmarttBot
        Quando insiro usuário 'costacarol87'
        E senha já cadastrados 'Sm@rttB0t'
        E clico para acessar o site 
        Então devo ser autenticado na plataforma com sucesso
        