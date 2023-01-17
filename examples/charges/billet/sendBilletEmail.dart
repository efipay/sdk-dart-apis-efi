import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await sendBilletEmail(efi, 0);
  print(response);
}

dynamic sendBilletEmail(EfiPay efi, int chargeId) async {
  Map<String, dynamic> params = {'id': chargeId};
  dynamic body = {'email': 'oldbuck@sejaefi.com.br'};
  return await efi.call('sendBilletEmail', params: params, body: body);
}
