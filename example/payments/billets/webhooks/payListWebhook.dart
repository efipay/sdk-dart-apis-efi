import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await payListWebhook(efi);
  print(response);
}

dynamic payListWebhook(EfiPay efi) async {
  dynamic params = {
    "dataInicio": "2024-01-22T16:01:35Z",
    "dataFim": "2024-09-22T16:01:35Z"
  };
  return await efi.call('payListWebhook', params:params);
}
