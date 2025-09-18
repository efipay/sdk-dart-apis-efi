import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixDeleteWebhookAutomaticCharge(efi);
  print(response);
}

dynamic pixDeleteWebhookAutomaticCharge(EfiPay efi) async {
  return await efi.call('pixDeleteWebhookAutomaticCharge');
}
