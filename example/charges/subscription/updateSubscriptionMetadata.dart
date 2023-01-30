import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await updateSubscriptionMetadata(efi, 1);
  print(response);
}

dynamic updateSubscriptionMetadata(EfiPay efi, int subscriptionId) async {
  Map<String, dynamic> params = {'id': subscriptionId};

  dynamic body = {
    'notification_url': 'http://yourdomain.com',
    'custom_id': 'my_new_id'
  };

  return await efi.call('updateSubscriptionMetadata',
      params: params, body: body);
}
