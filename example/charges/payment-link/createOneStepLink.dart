import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await createOneStepLink(efi);
  print(response);
}

dynamic createOneStepLink(EfiPay efi) async {
  dynamic body = {
    'items': [
      {'name': "Product One", 'value': 600, 'amount': 1}
    ],
    "settings": {
      'payment_method': 'all',
      'expire_at': '2023-12-15',
      'request_delivery_address': false
    }
  };

  return await efi.call("createOneStepLink", body: body);
}
