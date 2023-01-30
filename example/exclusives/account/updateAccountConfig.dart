import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await updateAccountConfig(efi, "");
  print(response);
}

dynamic updateAccountConfig(EfiPay efi, String key) async {
  dynamic body = {
    'pix': {
      'receberSemChave': true,
      'chaves': {
        key: {
          'recebimento': {
            'txidObrigatorio': true,
            'qrCodeEstatico': {'recusarTodos': true}
          }
        }
      }
    }
  };
  return await efi.call('updateAccountConfig', body: body);
}
