import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofListBiometricPixPayment(efi);
  print(response);
}

dynamic ofListBiometricPixPayment(EfiPay efi) async {
  dynamic params = {
    'inicio': '2024-06-01',
    'fim': '2024-09-14',
    // 'status': ''          #Enum: pendente, rejeitado, aceito, expirado, cancelado
    // 'identificador': ''   #Exemplo : urn:efi:49315a93-d39c-4564-9edb-9a73678dbdb1
  };
  return await efi.call('ofListBiometricPixPayment', params:params);
}
