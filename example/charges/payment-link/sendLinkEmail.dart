import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await sendLinkEmail(efi, 0);
  print(response);
}

dynamic sendLinkEmail(EfiPay efi, int chargeId) async {
  Map<String, dynamic> params = {'id': chargeId};
  dynamic payment = {"email": "oldbuck@sejaefi.com.br"};
  return await efi.call("sendLinkEmail", params: params, body: payment);
}
