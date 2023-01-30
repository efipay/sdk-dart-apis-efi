import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await createCharge(efi, 1);
  print(response);
}

dynamic createCharge(EfiPay efi, int planId) async {
  Map<String, dynamic> params = {'id': planId};
  dynamic body = {
    'items': [
      {'name': "Product 1", 'value': 1000, 'amount': 2}
    ]
  };
  return await efi.call('createSubscription', params: params, body: body);
}
