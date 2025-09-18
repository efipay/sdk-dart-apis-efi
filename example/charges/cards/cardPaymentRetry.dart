import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await cardPaymentRetry(efi, 1);
  print(response);
}

dynamic cardPaymentRetry(EfiPay efi, int charge_id) async {
  Map<String, dynamic> params = {'id': 44815870};

  dynamic body = {
    'payment': {
        'credit_card': {
            'customer': {
                'name': "Gorbadoc Oldbuck",
                'cpf': "94271564656",
                'email': "email_do_cliente@servidor.com.br",
                'birth': "1990-08-29",
                'phone_number': "5144916523",
            },
            'billing_address': {
                'street': "Avenida Juscelino Kubitschek",
                'number': "909",
                'neighborhood': "Bauxita",
                'zipcode': "35400000",
                'city': "Ouro Preto",
                'complement': "",
                'state': "MG",
            },
            'payment_token': "c0cdfab4db3727d45559a8b777f41fd6027960a0"
        }
    }
  };

  return await efi.call('cardPaymentRetry', params: params, body: body);
}
