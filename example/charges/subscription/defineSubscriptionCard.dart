import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  Map<String, Object> card = {
    'brand': 'visa',
    'number': '5471616547931545',
    'cvv': '642',
    'expiration_month': '12',
    'expiration_year': '2023'
  };
  dynamic response = await defineSubscriptionPayMethod(efi, 1, card);
  print(response);
}

dynamic defineSubscriptionPayMethod(
    EfiPay efi, int subscriptionId, Map<String, Object> card) async {
  dynamic paymentToken = await efi.call('paymentToken', body: card);

  Map<String, dynamic> params = {'id': subscriptionId};

  dynamic body = {
    'payment': {
      'credit_card': {
        'payment_token': paymentToken['data']['payment_token'],
        'billing_address': {
          'street': 'Av. JK',
          'number': 909,
          'neighborhood': 'Bauxita',
          'zipcode': '35400000',
          'city': 'Ouro Preto',
          'state': 'MG'
        },
        'customer': {
          'name': 'Gorbadoc Oldbuck',
          'email': 'oldbuck@sejaefi.com.br',
          'cpf': '04267484171',
          'birth': '1977-01-15',
          'phone_number': '5144916523'
        }
      }
    }
  };

  return await efi.call('defineSubscriptionPayMethod',
      params: params, body: body);
}
