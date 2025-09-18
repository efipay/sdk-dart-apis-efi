import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixResendWebhook(efi);
  print(response);
}

dynamic pixResendWebhook(EfiPay efi) async {
  dynamic body = {
    'tipo': 'PIX_RECEBIDO', //PIX_RECEBIDO, PIX_ENVIADO, DEVOLUCAO_RECEBIDA, DEVOLUCAO_ENVIADA
    'e2eids': [
        'E09089356202412261300API229e5352',
        'E09089356202412261300API3149af57'
    ]
  };
  return await efi.call('pixResendWebhook', body: body);
}
