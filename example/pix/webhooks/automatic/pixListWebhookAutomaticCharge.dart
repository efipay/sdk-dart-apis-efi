import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixListWebhookAutomaticCharge(efi);
  print(response);
}

dynamic pixListWebhookAutomaticCharge(EfiPay efi) async {
  return await efi.call('pixListWebhookAutomaticCharge');
}
