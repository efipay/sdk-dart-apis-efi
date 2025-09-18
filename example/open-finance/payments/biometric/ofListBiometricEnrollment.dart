import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofListBiometricEnrollment(efi);
  print(response);
}

dynamic ofListBiometricEnrollment(EfiPay efi) async {
  dynamic params = {
    'inicio': '2022-04-29',
    'fim': '2024-12-29',
    // 'status': ''          #Enum: pendente, rejeitado, aceito, expirado, cancelado
    // 'identificador': ''   #Exemplo : urn:efi:49315a93-d39c-4564-9edb-9a73678dbdb1
  };
  return await efi.call('ofListBiometricEnrollment', params:params);
}
