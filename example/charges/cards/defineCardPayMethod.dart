import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  Map<String, Object> card = {
    "brand": "visa",
    "number": "4485388557842262",
    "cvv": "572",
    "expiration_month": "08",
    "expiration_year": "2024"
  };
  dynamic response = await definePayMethod(efi, 0, card);
  print(response);
}

dynamic definePayMethod(
    EfiPay efi, int chargeId, Map<String, Object> card) async {
  dynamic paymentToken = await efi.call("paymentToken", body: card);

  Map<String, dynamic> params = {"id": chargeId};
  dynamic payment = {
    "payment": {
      "credit_card": {
        "installments": 1,
        "payment_token": paymentToken['data']['payment_token'],
        "billing_address": {
          "street": "Av. JK",
          "number": 909,
          "neighborhood": "Bauxita",
          "zipcode": "35400000",
          "city": "Ouro Preto",
          "state": "MG"
        },
        "customer": {
          "name": "Gorbadoc Oldbuck",
          "email": "oldbuck@sejaefi.com.br",
          "cpf": "04267484171",
          "birth": "1977-01-15",
          "phone_number": "5144916523"
        }
      }
    }
  };
  return await efi.call("definePayMethod", params: params, body: payment);
}
