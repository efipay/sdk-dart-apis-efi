import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofConfigDetail(efi);
  print(response);
}

dynamic ofConfigDetail(EfiPay efi) async {
  return await efi.call('ofConfigDetail');
}
