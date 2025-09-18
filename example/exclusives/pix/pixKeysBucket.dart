import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixKeysBucket(efi);
  print(response);
}

dynamic pixKeysBucket(EfiPay efi) async {
  return await efi.call('pixKeysBucket');
}