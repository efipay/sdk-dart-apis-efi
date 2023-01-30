import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixListEvp(efi);
  print(response);
}

dynamic pixListEvp(EfiPay efi) async {
  return await efi.call("pixListEvp");
}
