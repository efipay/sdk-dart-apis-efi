import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixDetailWebhook(efi, '');
  print(response);
}

dynamic pixDetailWebhook(EfiPay efi, String key) async {
  Map<String, dynamic> params = {
    'chave': key,
  };
  return await efi.call('pixDetailWebhook', params: params);
}
