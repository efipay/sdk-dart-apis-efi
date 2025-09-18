import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixListWebhookRecurrenceAutomatic(efi);
  print(response);
}

dynamic pixListWebhookRecurrenceAutomatic(EfiPay efi) async {
  return await efi.call('pixListWebhookRecurrenceAutomatic');
}
