import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofListAutomaticPixPayment(efi);
  print(response);
}

dynamic ofListAutomaticPixPayment(EfiPay efi) async {
  dynamic params = {
    'identificadorAdesao': 'urn:efi:49315a93-d39c-4564-9yyb-9a73678dbdb1',
    'endToEndId': 'E00038166201907261559y6j6'
  };
  return await efi.call('ofListAutomaticPixPayment', params:params);
}
