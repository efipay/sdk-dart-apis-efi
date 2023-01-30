import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await getAccountBalance(efi);
  print(response);
}

dynamic getAccountBalance(EfiPay efi) async {
  return await efi.call('getAccountBalance');
}
