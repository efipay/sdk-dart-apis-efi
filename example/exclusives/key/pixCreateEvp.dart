import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixCreateEvp(efi);
  print(response);
}

dynamic pixCreateEvp(EfiPay efi) async {
  return await efi.call('pixCreateEvp');
}
