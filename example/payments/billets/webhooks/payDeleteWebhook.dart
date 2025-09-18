import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await payDeleteWebhook(efi);
  print(response);
}

dynamic payDeleteWebhook(EfiPay efi) async {
  dynamic body = {"url": ""};
  return await efi.call('payDeleteWebhook', body: body);
}
