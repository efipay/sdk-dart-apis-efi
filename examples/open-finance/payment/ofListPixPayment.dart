import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofListPixPayment(efi);
  print(response);
}

dynamic ofListPixPayment(EfiPay efi) async {
  dynamic params = {"inicio": "2020-10-22", "fim": "2022-12-23"};
  return await efi.call('ofListPixPayment', params: params);
}
