import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  credentials['headers'] = {
    'x-skip-mtls-checking': 'true',
  };
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixConfigWebhookAutomaticCharge(efi);
  print(response);
}

dynamic pixConfigWebhookAutomaticCharge(EfiPay efi) async {
  dynamic body = {
    'webhookUrl': 'https://usuario.recebedor.com/api/webhookrec/'
  };
  return await efi.call('pixConfigWebhookAutomaticCharge', body: body);
}
