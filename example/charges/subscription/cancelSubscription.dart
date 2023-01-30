import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await cancelSubscription(efi, 0);
  print(response);
}

dynamic cancelSubscription(EfiPay efi, int subscriptionId) async {
  Map<String, dynamic> params = {'id': subscriptionId};
  return await efi.call('cancelSubscription', params: params);
}
