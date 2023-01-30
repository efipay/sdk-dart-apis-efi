import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await detailSubscription(efi, 1000913);
  print(response);
}

dynamic detailSubscription(EfiPay efi, int subscriptionId) async {
  Map<String, dynamic> params = {'id': subscriptionId};
  return await efi.call('detailSubscription', params: params);
}
