import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixDeleteWebhook(efi, '');
  print(response);
}

dynamic pixDeleteWebhook(EfiPay efi, String key) async {
  Map<String, dynamic> params = {'chave': key};
  return await efi.call('pixDeleteWebhook', params: params);
}
