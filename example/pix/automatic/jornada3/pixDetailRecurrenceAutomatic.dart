import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixDetailRecurrenceAutomatic(efi, '');
  print(response);
}

dynamic pixDetailRecurrenceAutomatic(EfiPay efi, String idRec) async {
  Map<String, dynamic> params = {'idRec': idRec};
  return await efi.call('pixDetailRecurrenceAutomatic', params: params);
}
