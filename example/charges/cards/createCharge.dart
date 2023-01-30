import 'package:efipay/efipay.dart';
import '../../credentials.dart';

main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await createCharge(efi);
  print(response);
}

dynamic createCharge(EfiPay efi) async {
  dynamic body = {
    'items': [
      {'name': "Product 1", 'value': 1100, 'amount': 2}
    ],
  };

  return await efi.call('createCharge', body: body);
}
