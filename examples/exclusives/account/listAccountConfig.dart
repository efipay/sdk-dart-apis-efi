import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await listAccountConfig(efi);
  print(response);
}

dynamic listAccountConfig(EfiPay efi) async {
  return await efi.call("listAccountConfig");
}
