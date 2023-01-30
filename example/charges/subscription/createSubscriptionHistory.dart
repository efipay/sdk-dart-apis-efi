import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await createSubscriptionHistory(efi, 0);
  print(response);
}

dynamic createSubscriptionHistory(EfiPay efi, int subscriptionId) async {
  Map<String, dynamic> params = {'id': subscriptionId};
  dynamic body = {'description': "This subscription was not fully paid"};
  return await efi.call('createSubscriptionHistory',
      params: params, body: body);
}
