TypesNotify = {
    ['Sucesso'] = 'sucesso',
    ['Negado'] = 'negado',
    ['Importante'] = 'importante',
    ['Aviso'] = 'aviso',
}

Language = {
    BANK_WITHOUT_BALANCE = 'O <b>Hospital</b> não possui fundos suficiente',
    NO_BALANCE_TO_DEPOSIT = 'Você não possui <b>saldo</b> para efetuar o deposito',
    WITHDRAWN_BANK = 'Você sacou <b>R$ %s</b>',
    DEPOSITED_BANK = 'Você depositou <b>R$ %s</b>',
    BONUS_SENT = 'Você bonificou o(a) <b>%s</b> em <b>%s</b>',
    ERROR_BONUS_OFFLINE = 'Você não pode bonificar uma pessoa offline',
    PROMOTED_MEMBER = 'Você promoveu o <b>%s</b> para o cargo <b>%s</b>',
    PROMOTED_ERROR = 'Você não pode <b>promover</b> mas esse funcionario.',
    DEMOTED_MEMBER = 'Você rebaixou o <b>%s</b> para o cargo <b>%s</b>',
    DEMOTED_ERROR = 'Você promoveu o <b>%s</b> para o cargo <b>%s</b>',
    FIRED_MEMBER = 'Você demitiu o id <b>%s</b> do cargo <b>%s</b>',
    FIRED_ERROR = 'Você não pode se demitir',

    NEW_CALLING = 'Um novo chamado em andamento',
    PENDING_CALL = 'Você não pode solicitar novamente um chamado, você já possui um chamado pendente.',
    BONUS_RECEIVED = 'Você foi bonificado pelo <b>%s</b> no valor de $ <b>%s</b>',
    SENT_CONTRACT_REQUEST = 'Você enviou uma solicitação para contrato para o id %s',
    ACCEPTED_CONTRACT_REQUEST_PLAYER = 'Você aceitou a solicitação para ser contratado pelo hospital',
    ACCEPTED_CONTRACT_REQUEST_LEADER_PLAYER = 'Ele aceitou a solicitação',
    RECUSED_CONTRACT_REQUEST_PLAYER = 'Você recusou uma solicitação de contrato',
    RECUSED_CONTRACT_REQUEST_LEADER_PLAYER = 'Ele recusou a solicitação',
    CONTRACT_PLAYER_OFFLINE_ERROR = 'Você não pode contratar uma pessoa offline.',
    YOU_CANNOT_HIRE_YOURSELF = 'Você não pode se auto contratar.'
}

Notify = function(source,type,text)
    TriggerClientEvent('Notify',source,type,text,5000)
end