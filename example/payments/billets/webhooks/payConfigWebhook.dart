import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await payConfigWebhook(efi);
  print(response);
}

dynamic payConfigWebhook(EfiPay efi) async {
  dynamic body = {"url": ""};
  return await efi.call('payConfigWebhook', body: body);
}