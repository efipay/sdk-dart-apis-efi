import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await sendSubscriptionLinkEmail(efi, 1);
  print(response);
}

dynamic sendSubscriptionLinkEmail(EfiPay efi, int subscriptionId) async {
  Map<String, dynamic> params = {'id': subscriptionId};
  dynamic body = {'email': "oldbuck@sejaefi.com.br"};
  return await efi.call('sendSubscriptionLinkEmail',
      params: params, body: body);
}
