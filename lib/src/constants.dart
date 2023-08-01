/// This constant stores all the EfiPay API Endpoints and other information

const Map<String, Map<String, dynamic>> CONSTANTS = {
  'DEFAULT': {
    'URL': {
      'production': 'https://cobrancas.api.efipay.com.br/v1',
      'sandbox': 'https://cobrancas-h.api.efipay.com.br/v1'
    },
    'ENDPOINTS': {
      'authorize': {'route': '/authorize', 'method': 'post'},
      'createCharge': {'route': '/charge', 'method': 'post'},
      'detailCharge': {'route': '/charge/:id', 'method': 'get'},
      'updateChargeMetadata': {
        'route': '/charge/:id/metadata',
        'method': 'put'
      },
      'updateBillet': {'route': '/charge/:id/billet', 'method': 'put'},
      'definePayMethod': {'route': '/charge/:id/pay', 'method': 'post'},
      'cancelCharge': {'route': '/charge/:id/cancel', 'method': 'put'},
      'createCarnet': {'route': '/carnet', 'method': 'post'},
      'detailCarnet': {'route': '/carnet/:id', 'method': 'get'},
      'updateCarnetParcel': {
        'route': '/carnet/:id/parcel/:parcel',
        'method': 'put'
      },
      'updateCarnetMetadata': {
        'route': '/carnet/:id/metadata',
        'method': 'put'
      },
      'getNotification': {'route': '/notification/:token', 'method': 'get'},
      'listPlans': {'route': '/plans', 'method': 'get'},
      'createPlan': {'route': '/plan', 'method': 'post'},
      'deletePlan': {'route': '/plan/:id', 'method': 'delete'},
      'createSubscription': {
        'route': '/plan/:id/subscription',
        'method': 'post'
      },
      'detailSubscription': {'route': '/subscription/:id', 'method': 'get'},
      'defineSubscriptionPayMethod': {
        'route': '/subscription/:id/pay',
        'method': 'post'
      },
      'cancelSubscription': {
        'route': '/subscription/:id/cancel',
        'method': 'put'
      },
      'updateSubscriptionMetadata': {
        'route': '/subscription/:id/metadata',
        'method': 'put'
      },
      'getInstallments': {'route': '/installments', 'method': 'get'},
      'sendBilletEmail': {
        'route': '/charge/:id/billet/resend',
        'method': 'post'
      },
      'createChargeHistory': {'route': '/charge/:id/history', 'method': 'post'},
      'createOneStepCharge': {'route': '/charge/one-step', 'method': 'post'},
      'sendCarnetEmail': {'route': '/carnet/:id/resend', 'method': 'post'},
      'sendCarnetParcelEmail': {
        'route': '/carnet/:id/parcel/:parcel/resend',
        'method': 'post'
      },
      'createCarnetHistory': {'route': '/carnet/:id/history', 'method': 'post'},
      'cancelCarnet': {'route': '/carnet/:id/cancel', 'method': 'put'},
      'cancelCarnetParcel': {
        'route': '/carnet/:id/parcel/:parcel/cancel',
        'method': 'put'
      },
      'defineLinkPayMethod': {'route': '/charge/:id/link', 'method': 'post'},
      'chargeLink': {'route': '/charge/:id/link', 'method': 'post'},
      'updateChargeLink': {'route': '/charge/:id/link', 'method': 'put'},
      'updatePlan': {'route': '/plan/:id', 'method': 'put'},
      'createSubscriptionHistory': {
        'route': '/subscription/:id/history',
        'method': 'post'
      },
      'defineBalanceSheetBillet': {
        'route': '/charge/:id/balance-sheet',
        'method': 'post'
      },
      'settleCharge': {'route': '/charge/:id/settle', 'method': 'put'},
      'settleCarnetParcel': {
        'route': '/carnet/:id/parcel/:parcel/settle',
        'method': 'put'
      },
      'createOneStepSubscription': {
        'route': '/plan/:id/subscription/one-step',
        'method': 'post'
      },
      'oneStepSubscriptionLink': {
        'route': '/plan/:id/subscription/one-step/link',
        'method': 'post'
      },
      'createOneStepLink': {'route': '/charge/one-step/link', 'method': 'post'},
      'sendLinkEmail': {'route': '/charge/:id/link/resend', 'method': 'post'},
      'sendSubscriptionLinkEmail': {
        'route': '/charge/:id/subscription/resend',
        'method': 'post'
      },
      'settleCarnet': {'route': '/carnet/:id/settle', 'method': 'put'},
      'resendNotification': {
        'route': '/charge/:id/notification/resend',
        'method': 'get'
      },
      'resendNotificationCarnet': {
        'route': '/carnet/:id/notification/resend',
        'method': 'get'
      }
    }
  },
  'PIX': {
    'URL': {
      'production': 'https://pix.api.efipay.com.br',
      'sandbox': 'https://pix-h.api.efipay.com.br'
    },
    'ENDPOINTS': {
      'authorize': {'route': '/oauth/token', 'method': 'post'},
      'pixConfigWebhook': {'route': '/v2/webhook/:chave', 'method': 'put'},
      'pixDetailWebhook': {'route': '/v2/webhook/:chave', 'method': 'get'},
      'pixListWebhook': {'route': '/v2/webhook', 'method': 'get'},
      'pixDeleteWebhook': {'route': '/v2/webhook/:chave', 'method': 'delete'},
      'pixCreateCharge': {'route': '/v2/cob/:txid', 'method': 'put'},
      'pixCreateImmediateCharge': {'route': '/v2/cob', 'method': 'post'},
      'pixDetailCharge': {'route': '/v2/cob/:txid', 'method': 'get'},
      'pixUpdateCharge': {'route': '/v2/cob/:txid', 'method': 'patch'},
      'pixListCharges': {'route': '/v2/cob', 'method': 'get'},
      'pixGenerateQRCode': {'route': '/v2/loc/:id/qrcode', 'method': 'get'},
      'pixDevolution': {
        'route': '/v2/pix/:e2eId/devolucao/:id',
        'method': 'put'
      },
      'pixDetailDevolution': {
        'route': '/v2/pix/:e2eId/devolucao/:id',
        'method': 'get'
      },
      'pixSend': {'route': '/v2/gn/pix/:idEnvio', 'method': 'put'},
      'pixSendList': {'route': '/v2/pix/:e2eId', 'method': 'get'},
      'pixSendDetail': {'route': '/v2/gn/pix/enviados/:e2eId', 'method': 'get'},
      'pixDetailReceived': {'route': '/v2/pix/:e2eId', 'method': 'get'},
      'pixReceivedList': {'route': '/v2/pix', 'method': 'get'},
      'pixCreateLocation': {'route': '/v2/loc', 'method': 'post'},
      'pixLocationList': {'route': '/v2/loc', 'method': 'get'},
      'pixDetailLocation': {'route': '/v2/loc/:id', 'method': 'get'},
      'pixUnlinkTxidLocation': {
        'route': '/v2/loc/:id/txid',
        'method': 'delete'
      },
      'pixCreateEvp': {'route': '/v2/gn/evp', 'method': 'post'},
      'pixListEvp': {'route': '/v2/gn/evp', 'method': 'get'},
      'pixDeleteEvp': {'route': '/v2/gn/evp/:chave', 'method': 'delete'},
      'getAccountBalance': {'route': '/v2/gn/saldo', 'method': 'get'},
      'updateAccountConfig': {'route': '/v2/gn/config', 'method': 'put'},
      'listAccountConfig': {'route': '/v2/gn/config', 'method': 'get'},
      'pixCreateDueCharge': {'route': '/v2/cobv/:txid', 'method': 'put'},
      'pixUpdateDueCharge': {'route': '/v2/cobv/:txid', 'method': 'patch'},
      'pixDetailDueCharge': {'route': '/v2/cobv/:txid', 'method': 'get'},
      'pixListDueCharges': {'route': '/v2/cobv/', 'method': 'get'},
      'createReport': {
        'route': '/v2/gn/relatorios/extrato-conciliacao',
        'method': 'post'
      },
      'detailReport': {'route': '/v2/gn/relatorios/:id', 'method': 'get'},
      'pixSplitConfig': {'route': '/v2/gn/split/config', 'method': 'post'},
      'pixSplitConfigId': {'route': '/v2/gn/split/config/:id', 'method': 'put'},
      'pixSplitDetailConfig': {
        'route': '/v2/gn/split/config/:id',
        'method': 'get'
      },
      'pixSplitUnlinkDueCharge': {
        'route': '/v2/gn/split/cobv/:txid/vinculo',
        'method': 'delete'
      },
      'pixSplitLinkDueCharge': {
        'route': '/v2/gn/split/cobv/:txid/vinculo/:splitConfigId',
        'method': 'put'
      },
      'pixSplitDetailDueCharge': {
        'route': '/v2/gn/split/cobv/:txid',
        'method': 'get'
      },
      'pixSplitUnlinkCharge': {
        'route': '/v2/gn/split/cob/:txid/vinculo',
        'method': 'delete'
      },
      'pixSplitLinkCharge': {
        'route': '/v2/gn/split/cob/:txid/vinculo/:splitConfigId',
        'method': 'put'
      },
      'pixSplitDetailCharge': {
        'route': '/v2/gn/split/cob/:txid',
        'method': 'get'
      },
    }
  },
  'OPEN-FINANCE': {
    'URL': {
      'production': 'https://openfinance.api.efipay.com.br/v1',
      'sandbox': 'https://openfinance-h.api.efipay.com.br/v1'
    },
    'ENDPOINTS': {
      'authorize': {'route': '/oauth/token', 'method': 'post'},
      'ofConfigUpdate': {'route': '/config', 'method': 'put'},
      'ofConfigDetail': {'route': '/config', 'method': 'get'},
      'ofListParticipants': {'route': '/participantes', 'method': 'get'},
      'ofStartPixPayment': {'route': '/pagamentos/pix', 'method': 'post'},
      'ofListPixPayment': {'route': '/pagamentos/pix', 'method': 'get'},
      'ofDevolutionPix': {
        'route': '/pagamentos/pix/:identificadorPagamento/devolver',
        'method': 'post'
      },
    }
  },
  'PAGAMENTOS': {
    'URL': {
      'production': 'https://pagarcontas.api.efipay.com.br/v1',
      'sandbox': 'https://pagarcontas.api.efipay.com.br/v1'
    },
    'ENDPOINTS': {
      'authorize': {'route': '/oauth/token', 'method': 'post'},
      'payDetailBarCode': {'route': '/codBarras/:codBarras', 'method': 'get'},
      'payRequestBarCode': {'route': '/codBarras/:codBarras', 'method': 'post'},
      'payDetailPayment': {'route': '/:idPagamento', 'method': 'get'},
      'payListPayments': {'route': '/resumo', 'method': 'get'}
    }
  },
  'OPENING-ACCOUNTS': {
    'URL': {
      'production': 'https://abrircontas.api.efipay.com.br/v1',
      'sandbox': 'https://abrircontas.api.efipay.com.br/v1'
    },
    'ENDPOINTS': {
      'authorize': {'route': '/oauth/token', 'method': 'post'},
      'createAccount': {
        'route': '/cadastro/conta-simplificada',
        'method': 'post'
      },
      'getAccountCredentials': {
        'route':
            '/cadastro/conta-simplificada/:idContaSimplificada/credenciais',
        'method': 'get'
      },
      'getAccountCertificate': {
        'route':
            '/cadastro/conta-simplificada/:idContaSimplificada/certificado',
        'method': 'get'
      },
      'accountConfigWebhook': {'route': '/cadastro/webhook', 'method': 'post'},
      'accountListWebhook': {'route': '/cadastro/webhooks', 'method': 'get'},
      'accountDetailWebhook': {
        'route': '/cadastro/webhook/:identificadorWebhook',
        'method': 'get'
      },
      'accountDeleteWebhook': {
        'route': '/cadastro/webhook/:identificadorWebhook',
        'method': 'delete'
      }
    }
  }
};
