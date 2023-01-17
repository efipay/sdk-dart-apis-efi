import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials['headers'] = {
    'x-skip-mtls-checking': 'true',
  };
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixConfigWebhook(efi, '');
  print(response);
}

dynamic pixConfigWebhook(EfiPay efi, String key) async {
  Map<String, dynamic> params = {
    'chave': key,
  };
  dynamic body = {'webhookUrl': 'https://pix.sejaefi.com.br'};
  return await efi.call('pixConfigWebhook', params: params, body: body);
}
