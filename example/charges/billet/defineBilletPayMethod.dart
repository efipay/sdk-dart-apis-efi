import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await definePayMethod(efi, 0);
  print(response);
}

dynamic definePayMethod(EfiPay efi, int chargeId) async {
  dynamic payment = {
    "payment": {
      "banking_billet": {
        "expire_at": "2023-12-12",
        "customer": {
          "name": "Gorbadoc Oldbucks",
          "email": "oldbuck@sejaefi.com.br",
          "cpf": "72992953008",
          "birth": "1977-01-15",
          "phone_number": "5144916523"
        }
      }
    }
  };

  return await efi.call("definePayMethod",
      params: {"id": chargeId}, body: payment);
}
