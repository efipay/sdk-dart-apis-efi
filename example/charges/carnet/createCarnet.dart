import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await createCarnet(efi);
  print(response);
}

dynamic createCarnet(EfiPay efi) async {
  dynamic body = {
    "expire_at": "2023-12-12",
    "items": [
      {"name": "Carnet Item 1", "value": 1000, "amount": 2}
    ],
    "customer": {
      "name": "Gorbadoc Oldbuck",
      "email": "oldbuck@sejaefi.com.br",
      "cpf": "62959186036",
      "birth": "1977-01-15",
      "phone_number": "5144916523"
    },
    "repeats": 12,
    "split_items": false
  };

  return await efi.call("createCarnet", body: body);
}
