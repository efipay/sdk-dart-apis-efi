import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixDeleteWebhookRecurrenceAutomatic(efi);
  print(response);
}

dynamic pixDeleteWebhookRecurrenceAutomatic(EfiPay efi) async {
  return await efi.call('pixDeleteWebhookRecurrenceAutomatic');
}
