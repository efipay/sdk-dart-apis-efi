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
  dynamic response = await createOneStepSubscription(efi, card, 95511);
  print(response);
}

dynamic createOneStepSubscription(
    EfiPay efi, Map<String, Object> card, int planId) async {
  Map<String, dynamic> params = {'id': planId};
  dynamic paymentToken = await efi.call("paymentToken", body: card);

  dynamic body = {
    'items': [
      {'name': 'Product 1', 'value': 1000, 'amount': 2}
    ],
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
          'cpf': '94271564656',
          'birth': '1977-01-15',
          'phone_number': '5144916523'
        }
      }
    }
  };
  return await efi.call('createOneStepSubscription',
      params: params, body: body);
}
