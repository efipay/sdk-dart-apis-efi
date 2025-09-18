import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixSendDetailId(efi, '');
  print(response);
}

dynamic pixSendDetailId(EfiPay efi, String idEnvio) async {
  Map<String, dynamic> params = {'idEnvio': idEnvio};
  return await efi.call('pixSendDetailId', params: params);
}
