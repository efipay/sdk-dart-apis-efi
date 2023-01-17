import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixSend(efi);
  print(response);
}

dynamic pixSend(EfiPay efi) async {
  dynamic params = {'idEnvio': 1};

  dynamic body = {
    'valor': '',
    'pagador': {'chave': ''},
    'favorecido': {'chave': ''}
  };
  return await efi.call('pixSend', body: body, params: params);
}
