import 'package:efipay/efipay.dart';
import '../../credentials.dart';

main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await defineLinkPayMethod(efi, 0);
  print(response);
}

dynamic defineLinkPayMethod(EfiPay efi, int chargeId) async {
  Map<String, dynamic> params = {'id': chargeId};
  dynamic body = {
    'billet_discount': 1,
    'card_discount': 1,
    'message': '',
    'expire_at': '2023-12-12',
    'request_delivery_address': false,
    'payment_method': 'all'
  };
  return await efi.call('defineLinkPayMethod', params: params, body: body);
}
