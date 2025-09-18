import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixDetailRequestRecurrenceAutomatic(efi, '');
  print(response);
}

dynamic pixDetailRequestRecurrenceAutomatic(EfiPay efi, String idSolicRec) async {
  Map<String, dynamic> params = {'idSolicRec': idSolicRec};
  return await efi.call('pixDetailRequestRecurrenceAutomatic', params: params);
}
