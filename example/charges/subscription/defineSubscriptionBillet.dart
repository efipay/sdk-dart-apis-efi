import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await defineSubscriptionPayMethod(efi, 1001342);
  print(response);
}

dynamic defineSubscriptionPayMethod(EfiPay efi, int subscriptionId) async {
  Map<String, dynamic> params = {'id': subscriptionId};

  dynamic body = {
    'payment': {
      'banking_billet': {
        'expire_at': '2023-12-12',
        'customer': {
          'name': 'Gorbadoc Oldbuck',
          'email': 'oldbuck@sejaefi.com.br',
          'cpf': '94271564656',
          'birth': '1977-01-15',
          'phone_number': '5144916523'
        }
      }
    }
  };

  return await efi.call('defineSubscriptionPayMethod',
      params: params, body: body);
}
