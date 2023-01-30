import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await updateCarnetMetadata(efi, 0);
  print(response);
}

dynamic updateCarnetMetadata(EfiPay efi, int carnetId) async {
  Map<String, dynamic> params = {'id': carnetId};
  dynamic body = {
    'notification_url': 'http://yourdomain.com',
    'custom_id': 'my_new_id'
  };
  return await efi.call('updateCarnetMetadata', params: params, body: body);
}
