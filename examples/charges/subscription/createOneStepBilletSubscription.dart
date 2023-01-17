import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await createOneStepSubscription(efi, 0);
  print(response);
}

dynamic createOneStepSubscription(EfiPay efi, int planId) async {
  Map<String, dynamic> params = {'id': planId};
  dynamic body = {
    'items': [
      {'name': "Product 1", 'value': 1000, 'amount': 2}
    ],
    'payment': {
      'banking_billet': {
        'expire_at': '2023-12-12',
        'customer': {
          'name': "Gorbadoc Oldbuck",
          'email': "oldbuck@sejaefi.com.br",
          'cpf': "94271564656",
          'birth': "1977-01-15",
          'phone_number': "5144916523"
        }
      }
    }
  };
  return await efi.call('createOneStepSubscription',
      params: params, body: body);
}
