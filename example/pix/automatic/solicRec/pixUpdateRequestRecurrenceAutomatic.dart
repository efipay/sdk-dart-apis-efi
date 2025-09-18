import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixUpdateRequestRecurrenceAutomatic(efi, '');
  print(response);
}

dynamic pixUpdateRequestRecurrenceAutomatic(EfiPay efi, String idSolicRec) async {
  Map<String, dynamic> params = {'idSolicRec': idSolicRec};
  dynamic body = {
    'status': 'CANCELADA'
  };
  return await efi.call('pixUpdateRequestRecurrenceAutomatic', params: params, body: body);
}
