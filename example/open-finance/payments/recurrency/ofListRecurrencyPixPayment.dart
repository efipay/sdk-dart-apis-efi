import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofListRecurrencyPixPayment(efi);
  print(response);
}

dynamic ofListRecurrencyPixPayment(EfiPay efi) async {
  dynamic params = {
    'inicio': '2022-04-29',
    'fim': '2024-12-29'
  };
  return await efi.call('ofListRecurrencyPixPayment', params:params);
}
