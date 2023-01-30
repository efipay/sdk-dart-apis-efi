import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await cancelCharge(efi, 0);
  print(response);
}

dynamic cancelCharge(EfiPay efi, int id) async {
  return await efi.call("cancelCharge", params: {"id": id});
}
