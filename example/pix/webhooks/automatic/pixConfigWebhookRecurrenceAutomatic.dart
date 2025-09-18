import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  credentials['headers'] = {
    'x-skip-mtls-checking': 'true',
  };
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixConfigWebhookRecurrenceAutomatic(efi);
  print(response);
}

dynamic pixConfigWebhookRecurrenceAutomatic(EfiPay efi) async {
  dynamic body = {
    'webhookUrl': 'https://usuario.recebedor.com/api/webhookrec/'
  };
  return await efi.call('pixConfigWebhookRecurrenceAutomatic', body: body);
}
