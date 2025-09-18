import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixDetailLocationRecurrenceAutomatic(efi, 0);
  print(response);
}

dynamic pixDetailLocationRecurrenceAutomatic(EfiPay efi, int id) async {
  Map<String, dynamic> params = {'id': 20};
  return await efi.call('pixDetailLocationRecurrenceAutomatic', params: params);
}