/// This constant stores all the EfiPay API Endpoints and other information.

const Map<String, Map<String, dynamic>> CONSTANTS = {
  'DEFAULT': {
    'URL': {
      'production': 'https://cobrancas.api.efipay.com.br/v1',
      'sandbox': 'https://cobrancas-h.api.efipay.com.br/v1'
    },
    'ENDPOINTS': {
      'authorize': {'route': '/authorize', 'method': 'post'},

      // CHARGES - BILLET
      'cancelCharge': {'route': '/charge/:id/cancel', 'method': 'put'},
      'createChargeHistory': {'route': '/charge/:id/history', 'method': 'post'},
      'createCharge': {'route': '/charge', 'method': 'post'},
      'createOneStepCharge': {'route': '/charge/one-step', 'method': 'post'},
      'defineBalanceSheetBillet': {'route': '/charge/:id/balance-sheet', 'method': 'post'},
      'definePayMethod': {'route': '/charge/:id/pay', 'method': 'post'},
      'detailCharge': {'route': '/charge/:id', 'method': 'get'},
      'listCharges': {'route': '/charges', 'method': 'get'},
      'sendBilletEmail': {'route': '/charge/:id/billet/resend', 'method': 'post'},
      'settleCharge': {'route': '/charge/:id/settle', 'method': 'put'},
      'updateBillet': {'route': '/charge/:id/billet', 'method': 'put'},
      'updateChargeMetadata': {'route': '/charge/:id/metadata', 'method': 'put'},
      'resendNotification': {'route': '/charge/:id/notification/resend', 'method': 'get'},

      // CHARGES - CARD
      'refundCard': {'route': '/charge/card/:id/refund', 'method': 'post'},
      'cardPaymentRetry': {'route': '/charge/:id/retry', 'method': 'post'},
      'getInstallments': {'route': '/installments', 'method': 'get'},

      // CHARGES - CARNET
      'cancelCarnet': {'route': '/carnet/:id/cancel', 'method': 'put'},
      'cancelCarnetParcel': {'route': '/carnet/:id/parcel/:parcel/cancel', 'method': 'put'},
      'createCarnet': {'route': '/carnet', 'method': 'post'},
      'createCarnetHistory': {'route': '/carnet/:id/history', 'method': 'post'},
      'detailCarnet': {'route': '/carnet/:id', 'method': 'get'},
      'sendCarnetEmail': {'route': '/carnet/:id/resend', 'method': 'post'},
      'sendCarnetParcelEmail': {'route': '/carnet/:id/parcel/:parcel/resend', 'method': 'post'},
      'settleCarnet': {'route': '/carnet/:id/settle', 'method': 'put'},
      'settleCarnetParcel': {'route': '/carnet/:id/parcel/:parcel/settle', 'method': 'put'},
      'updateCarnetMetadata': {'route': '/carnet/:id/metadata', 'method': 'put'},
      'updateCarnetParcel': {'route': '/carnet/:id/parcel/:parcel', 'method': 'put'},
      'updateCarnetParcels': {'route': '/carnet/:id/parcels', 'method': 'put'},
      'resendNotificationCarnet': {'route': '/carnet/:id/notification/resend', 'method': 'get'},

      // CHARGES - NOTIFICATION
      'getNotification': {'route': '/notification/:token', 'method': 'get'},

      // CHARGES - PAYMENT-LINK
      'createOneStepLink': {'route': '/charge/one-step/link', 'method': 'post'},
      'defineLinkPayMethod': {'route': '/charge/:id/link', 'method': 'post'},
      'sendLinkEmail': {'route': '/charge/:id/link/resend', 'method': 'post'},
      'updateChargeLink': {'route': '/charge/:id/link', 'method': 'put'},

      // CHARGES - SUBSCRIPTION
      'cancelSubscription': {'route': '/subscription/:id/cancel', 'method': 'put'},
      'createSubscription': {'route': '/plan/:id/subscription', 'method': 'post'},
      'createOneStepSubscription': {'route': '/plan/:id/subscription/one-step', 'method': 'post'},
      'createOneStepSubscriptionLink': {'route': '/plan/:id/subscription/one-step/link', 'method': 'post'},
      'createPlan': {'route': '/plan', 'method': 'post'},
      'createSubscriptionHistory': {'route': '/subscription/:id/history', 'method': 'post'},
      'defineSubscriptionPayMethod': {'route': '/subscription/:id/pay', 'method': 'post'},
      'deletePlan': {'route': '/plan/:id', 'method': 'delete'},
      'detailSubscription': {'route': '/subscription/:id', 'method': 'get'},
      'listPlans': {'route': '/plans', 'method': 'get'},
      'sendSubscriptionLinkEmail': {'route': '/charge/:id/subscription/resend', 'method': 'post'},
      'updatePlan': {'route': '/plan/:id', 'method': 'put'},
      'updateSubscription': {'route': '/subscription/:id', 'method': 'put'},
      'updateSubscriptionMetadata': {'route': '/subscription/:id/metadata', 'method': 'put'},
    }
  },
  'OPEN-ACCOUNTS': {
    'URL': {
      'production': 'https://abrircontas.api.efipay.com.br/v1',
      'sandbox': '	https://abrircontas-h.api.efipay.com.br/v1'
    },
    'ENDPOINTS': {
      'authorize': {'route': '/oauth/token', 'method': 'post'},

      // OPEN-ACCOUNTS - SIMPLIFIED-ACCOUNT
      'createAccount': {'route': '/conta-simplificada', 'method': 'post'},
      'createAccountCertificate': {'route': '/conta-simplificada/:identificador/certificado', 'method': 'post'},
      'getAccountCredentials': {'route': '/conta-simplificada/:identificador/credenciais', 'method': 'get'},

      // OPEN-ACCOUNTS - WEBHOOKS
      'accountConfigWebhook': {'route': '/webhook', 'method': 'post'},
      'accountDeleteWebhook': {'route': '/webhook/:identificadorWebhook', 'method': 'delete'},
      'accountDetailWebhook': {'route': '/webhook/:identificadorWebhook', 'method': 'get'},
      'accountListWebhook': {'route': '/webhooks', 'method': 'get'}
    }
  },
  'OPEN-FINANCE': {
    'URL': {
      'production': 'https://openfinance.api.efipay.com.br/v1',
      'sandbox': 'https://openfinance-h.api.efipay.com.br/v1'
    },
    'ENDPOINTS': {
      'authorize': {'route': '/oauth/token', 'method': 'post'},

      // OPEN-FINANCE - CONFIG
      'ofConfigDetail': {'route': '/config', 'method': 'get'},
      'ofConfigUpdate': {'route': '/config', 'method': 'put'},

      // OPEN-FINANCE - PARTICIPANTS
      'ofListParticipants': {'route': '/participantes', 'method': 'get'},

      // OPEN-FINANCE - PAYMENTS - IMMEDIATE
      'ofListPixPayment': {'route': '/pagamentos/pix', 'method': 'get'},
      'ofStartPixPayment': {'route': '/pagamentos/pix', 'method': 'post'},
      'ofDevolutionPix': {'route': '/pagamentos/pix/:identificadorPagamento/devolver', 'method': 'post'},

      // OPEN-FINANCE - PAYMENTS - SCHEDULE
      'ofCancelSchedulePix': {'route': '/pagamentos-agendados/pix/:identificadorPagamento/cancelar', 'method': 'patch'},
      'ofListSchedulePixPayment': {'route': '/pagamentos-agendados/pix', 'method': 'get'},
      'ofStartSchedulePixPayment': {'route': '/pagamentos-agendados/pix', 'method': 'post'},
      'ofDevolutionSchedulePix': {'route': '/pagamentos-agendados/pix/:identificadorPagamento/devolver', 'method': 'post'},

      // OPEN-FINANCE - PAYMENTS - RECURRENCY
      'ofStartRecurrencyPixPayment': {'route': '/pagamentos-recorrentes/pix', 'method': 'post'},
      'ofListRecurrencyPixPayment': {'route': '/pagamentos-recorrentes/pix', 'method': 'get'},
      'ofCancelRecurrencyPix': {'route': '/pagamentos-recorrentes/pix/:identificadorPagamento/cancelar', 'method': 'patch'},
      'ofDevolutionRecurrencyPix': {'route': '/pagamentos-recorrentes/pix/:identificadorPagamento/devolver', 'method': 'post'},
      'ofReplaceRecurrencyPixParcel': {'route': '/pagamentos-recorrentes/pix/:identificadorPagamento/substituir/:endToEndId', 'method': 'patch'},

      // OPEN-FINANCE - PAYMENTS - BIOMETRIC
      'ofCreateBiometricEnrollment': {'route': '/pagamentos-biometria/vinculos', 'method': 'post'},
      'ofListBiometricEnrollment': {'route': '/pagamentos-biometria/vinculos', 'method': 'get'},
      'ofRevokeBiometricEnrollment': {'route': '/pagamentos-biometria/vinculos', 'method': 'patch'},
      'ofCreateBiometricPixPayment': {'route': '/pagamentos-biometria/pix', 'method': 'post'},
      'ofListBiometricPixPayment': {'route': '/pagamentos-biometria/pix', 'method': 'get'},

      // OPEN-FINANCE - PAYMENTS - AUTOMATIC
      'ofCreateAutomaticEnrollment': {'route': '/pagamentos-automaticos/adesao', 'method': 'post'},
      'ofListAutomaticEnrollment': {'route': '/pagamentos-automaticos/adesao', 'method': 'get'},
      'ofUpdateAutomaticEnrollment': {'route': '/pagamentos-automaticos/adesao', 'method': 'patch'},
      'ofCreateAutomaticPixPayment': {'route': '/pagamentos-automaticos/pix', 'method': 'post'},
      'ofListAutomaticPixPayment': {'route': '/pagamentos-automaticos/pix', 'method': 'get'},
      'ofCancelAutomaticPixPayment': {'route': '/pagamentos-automaticos/pix', 'method': 'patch'}
    }
  },
  'PAYMENTS': {
    'URL': {
      'production': 'https://pagarcontas.api.efipay.com.br/v1',
    },
    'ENDPOINTS': {
      'authorize': {'route': '/oauth/token', 'method': 'post'},

      // PAYMENTS - BILLETS - PAYMENT
      'payDetailBarCode': {'route': '/codBarras/:codBarras', 'method': 'get'},
      'payDetailPayment': {'route': '/:idPagamento', 'method': 'get'},
      'payListPayments': {'route': '/resumo', 'method': 'get'},
      'payRequestBarCode': {'route': '/codBarras/:codBarras', 'method': 'post'},

      // PAYMENTS - BILLETS - WEBHOOKS
      'payConfigWebhook': {'route': '/webhook', 'method': 'put'},
      'payDeleteWebhook': {'route': '/webhook', 'method': 'delete'},
      'payListWebhook': {'route': '/webhook', 'method': 'get'}
    }
  },
  'PIX': {
    'URL': {
      'production': 'https://pix.api.efipay.com.br',
      'sandbox': 'https://pix-h.api.efipay.com.br'
    },
    'ENDPOINTS': {
      'authorize': {'route': '/oauth/token', 'method': 'post'},

      // PIX - BATCH - COBV
      'pixCreateDueChargeBatch': {'route': '/v2/lotecobv/:id', 'method': 'put'},
      'pixUpdateDueChargeBatch': {'route': '/v2/lotecobv/:id', 'method': 'patch'},
      'pixDetailDueChargeBatch': {'route': '/v2/lotecobv/:id', 'method': 'get'},
      'pixListDueChargeBatch': {'route': '/v2/lotecobv', 'method': 'get'},

      // PIX - COB
      'pixCreateCharge': {'route': '/v2/cob/:txid', 'method': 'put'},
      'pixCreateImmediateCharge': {'route': '/v2/cob', 'method': 'post'},
      'pixDetailCharge': {'route': '/v2/cob/:txid', 'method': 'get'},
      'pixListCharges': {'route': '/v2/cob', 'method': 'get'},
      'pixUpdateCharge': {'route': '/v2/cob/:txid', 'method': 'patch'},

      // PIX - COBV
      'pixCreateDueCharge': {'route': '/v2/cobv/:txid', 'method': 'put'},
      'pixDetailDueCharge': {'route': '/v2/cobv/:txid', 'method': 'get'},
      'pixListDueCharges': {'route': '/v2/cobv/', 'method': 'get'},
      'pixUpdateDueCharge': {'route': '/v2/cobv/:txid', 'method': 'patch'},

      // PIX - AUTOMATIC - REC
      'pixDetailRecurrenceAutomatic': {'route': '/v2/rec/:idRec', 'method': 'get'},
      'pixUpdateRecurrenceAutomatic': {'route': '/v2/rec/:idRec', 'method': 'patch'},
      'pixListRecurrenceAutomatic': {'route': '/v2/rec', 'method': 'get'},
      'pixCreateRecurrenceAutomatic': {'route': '/v2/rec', 'method': 'post'},

      // PIX - AUTOMATIC - SOLICREC
      'pixCreateRequestRecurrenceAutomatic': {'route': '/v2/solicrec', 'method': 'post'},
      'pixDetailRequestRecurrenceAutomatic': {'route': '/v2/solicrec/:idSolicRec', 'method': 'get'},
      'pixUpdateRequestRecurrenceAutomatic': {'route': '/v2/solicrec/:idSolicRec', 'method': 'patch'},

      // PIX - AUTOMATIC - COBR
      'pixCreateAutomaticChargeTxid': {'route': '/v2/cobr/:txid', 'method': 'put'},
      'pixUpdateAutomaticCharge': {'route': '/v2/cobr/:txid', 'method': 'patch'},
      'pixDetailAutomaticCharge': {'route': '/v2/cobr/:txid', 'method': 'get'},
      'pixCreateAutomaticCharge': {'route': '/v2/cobr', 'method': 'post'},
      'pixListAutomaticCharge': {'route': '/v2/cobr', 'method': 'get'},
      'pixRetryRequestAutomatic': {'route': '/v2/cobr/:txid/retentativa/:data', 'method': 'post'},

      // PIX - LOCATION - LOC
      'pixCreateLocation': {'route': '/v2/loc', 'method': 'post'},
      'pixDetailLocation': {'route': '/v2/loc/:id', 'method': 'get'},
      'pixGenerateQRCode': {'route': '/v2/loc/:id/qrcode', 'method': 'get'},
      'pixLocationList': {'route': '/v2/loc', 'method': 'get'},
      'pixUnlinkTxidLocation': {'route': '/v2/loc/:id/txid', 'method': 'delete'},

      // PIX - LOCATION - LOCREC
      'pixCreateLocationRecurrenceAutomatic': {'route': '/v2/locrec', 'method': 'post'},
      'pixListLocationRecurrenceAutomatic': {'route': '/v2/locrec', 'method': 'get'},
      'pixDetailLocationRecurrenceAutomatic': {'route': '/v2/locrec/:id', 'method': 'get'},
      'pixUnlinkLocationRecurrenceAutomatic': {'route': '/v2/locrec/:id/idRec', 'method': 'delete'},

      // PIX - MANAGEMENT
      'pixDetailDevolution': {'route': '/v2/pix/:e2eId/devolucao/:id', 'method': 'get'},
      'pixDetailReceived': {'route': '/v2/pix/:e2eId', 'method': 'get'},
      'pixDevolution': {'route': '/v2/pix/:e2eId/devolucao/:id', 'method': 'put'},
      'pixReceivedList': {'route': '/v2/pix', 'method': 'get'},

      // PIX - PAYMENT
      'pixSend': {'route': '/v2/gn/pix/:idEnvio', 'method': 'put'},
      'pixSendSameOwnership': {'route': '/v2/gn/pix/:idEnvio/mesma-titularidade', 'method': 'put'},
      'pixSendDetail': {'route': '/v2/gn/pix/enviados/:e2eId', 'method': 'get'},
      'pixSendDetailId': {'route': '/v2/gn/pix/enviados/id-envio/:idEnvio', 'method': 'get'},
      'pixSendList': {'route': '/v2/pix/:e2eId', 'method': 'get'},
      'pixQrCodePay': {'route': '/v2/gn/pix/:idEnvio/qrcode', 'method': 'put'},
      'pixQrCodeDetail': {'route': '/v2/gn/qrcodes/detalhar', 'method': 'post'},

      // PIX - WEBHOOKS - COB-COBV
      'pixConfigWebhook': {'route': '/v2/webhook/:chave', 'method': 'put'},
      'pixDeleteWebhook': {'route': '/v2/webhook/:chave', 'method': 'delete'},
      'pixDetailWebhook': {'route': '/v2/webhook/:chave', 'method': 'get'},
      'pixListWebhook': {'route': '/v2/webhook', 'method': 'get'},
      'pixResendWebhook': {'route': '/v2/gn/webhook/reenviar', 'method': 'post'},

      // PIX - WEBHOOKS - AUTOMATIC
      'pixConfigWebhookRecurrenceAutomatic': {'route': '/v2/webhookrec', 'method': 'put'},
      'pixListWebhookRecurrenceAutomatic': {'route': '/v2/webhookrec', 'method': 'get'},
      'pixDeleteWebhookRecurrenceAutomatic': {'route': '/v2/webhookrec', 'method': 'delete'},
      'pixConfigWebhookAutomaticCharge': {'route': '/v2/webhookcobr', 'method': 'put'},
      'pixListWebhookAutomaticCharge': {'route': '/v2/webhookcobr', 'method': 'get'},
      'pixDeleteWebhookAutomaticCharge': {'route': '/v2/webhookcobr', 'method': 'delete'},

      // PIX - SPLIT - COB
      'pixSplitDetailCharge': {'route': '/v2/gn/split/cob/:txid', 'method': 'get'},
      'pixSplitLinkCharge': {'route': '/v2/gn/split/cob/:txid/vinculo/:splitConfigId', 'method': 'put'},
      'pixSplitUnlinkCharge': {'route': '/v2/gn/split/cob/:txid/vinculo', 'method': 'delete'},

      // PIX - SPLIT - COBV
      'pixSplitDetailDueCharge': {'route': '/v2/gn/split/cobv/:txid', 'method': 'get'},
      'pixSplitLinkDueCharge': {'route': '/v2/gn/split/cobv/:txid/vinculo/:splitConfigId', 'method': 'put'},
      'pixSplitUnlinkDueCharge': {'route': '/v2/gn/split/cobv/:txid/vinculo', 'method': 'delete'},

      // PIX - SPLIT - CONFIG
      'pixSplitConfig': {'route': '/v2/gn/split/config', 'method': 'post'},
      'pixSplitConfigId': {'route': '/v2/gn/split/config/:id', 'method': 'put'},
      'pixSplitDetailConfig': {'route': '/v2/gn/split/config/:id', 'method': 'get'},

      // EXCLUSIVES - ACCOUNT
      'getAccountBalance': {'route': '/v2/gn/saldo', 'method': 'get'},
      'listAccountConfig': {'route': '/v2/gn/config', 'method': 'get'},
      'updateAccountConfig': {'route': '/v2/gn/config', 'method': 'put'},

      // EXCLUSIVES - KEY
      'pixCreateEvp': {'route': '/v2/gn/evp', 'method': 'post'},
      'pixDeleteEvp': {'route': '/v2/gn/evp/:chave', 'method': 'delete'},
      'pixListEvp': {'route': '/v2/gn/evp', 'method': 'get'},

      // EXCLUSIVES - REPORT
      'createReport': {'route': '/v2/gn/relatorios/extrato-conciliacao', 'method': 'post'},
      'detailReport': {'route': '/v2/gn/relatorios/:id', 'method': 'get'},

      // EXCLUSIVES - MED
      'medList': {'route': '/v2/gn/infracoes', 'method': 'get'},
      'medDefense': {'route': '/v2/gn/infracoes/:idInfracao/defesa', 'method': 'post'},

      // EXCLUSIVES - PIX
      'pixKeysBucket': {'route': '/v2/gn/chaves/balde', 'method': 'get'},
      'pixGetReceipt': {'route': '/v2/gn/pix/comprovantes', 'method': 'get'}
    }
  },
  'STATEMENTS': {
    'URL': {
      'production': 'https://extratos.api.efipay.com.br/v1'
    },
    'ENDPOINTS': {
      'authorize': {'route': '/oauth/token', 'method': 'post'},

      // STATEMENTS - MANAGEMENT
      'listStatementFiles': {'route': '/extrato-cnab/arquivos', 'method': 'get'},
      'getStatementFile': {'route': '/extrato-cnab/download/:nome_arquivo', 'method': 'get'},
      'listStatementRecurrences': {'route': '/extrato-cnab/agendamentos', 'method': 'get'},
      'createStatementRecurrency': {'route': '/extrato-cnab/agendar', 'method': 'post'},
      'updateStatementRecurrency': {'route': '/extrato-cnab/agendar/:identificador', 'method': 'patch'},
      'createSftpKey': {'route': '/extrato-cnab/gerar-chaves', 'method': 'post'}
    }
  }
};