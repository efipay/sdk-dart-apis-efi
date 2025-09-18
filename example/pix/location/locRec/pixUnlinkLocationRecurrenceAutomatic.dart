import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixUnlinkLocationRecurrenceAutomatic(efi, 0);
  print(response);
}

dynamic pixUnlinkLocationRecurrenceAutomatic(EfiPay efi, int id) async {
  Map<String, dynamic> params = {'id': 21};
  return await efi.call('pixUnlinkLocationRecurrenceAutomatic', params: params);
}