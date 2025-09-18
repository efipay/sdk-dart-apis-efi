import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixSendSameOwnership(efi, '');
  print(response);
}

dynamic pixSendSameOwnership(EfiPay efi, String idEnvio) async {
  Map<String, dynamic> params = {'idEnvio': idEnvio};
  dynamic body = {
    'valor': '12.34',
    'pagador': {
        'chave': '19974764017',
        'infoPagador': 'Segue o pagamento da conta'
    },
    'favorecido': {
        'chave': 'joão@meuemail.com',
    }
  };
  return await efi.call('pixSendSameOwnership', params: params, body: body);
}
