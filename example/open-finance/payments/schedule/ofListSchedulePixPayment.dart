import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofListSchedulePixPayment(efi);
  print(response);
}

dynamic ofListSchedulePixPayment(EfiPay efi) async {
  dynamic params = {
    'inicio': '2022-05-01',
    'fim': '2024-05-01'
  };
  return await efi.call('ofListSchedulePixPayment', params:params);
}
