import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await updateChargeMetadata(efi, 0);
  print(response);
}

dynamic updateChargeMetadata(EfiPay efi, int chargeId) async {
  Map<String, dynamic> params = {'id': chargeId};

  dynamic body = {
    'notification_url': 'http://yourdomain.com',
    'custom_id': 'my_new_id'
  };

  return await efi.call('updateChargeMetadata', params: params, body: body);
}
