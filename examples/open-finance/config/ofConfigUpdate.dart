import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofConfigUpdate(efi);
  print(response);
}

dynamic ofConfigUpdate(EfiPay efi) async {
  dynamic body = {
    "redirectURL": "https://sejaefi.com.br",
    "webhookURL": "https://sejaefi.tk/webhook"
  };
  return await efi.call('ofConfigUpdate', body: body);
}
