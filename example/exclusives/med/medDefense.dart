import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await medDefense(efi);
  print(response);
}

dynamic medDefense(EfiPay efi) async {
  dynamic params = {"idInfracao": "00000000-0000-0000-0000-000000000000"};

  dynamic body = {
    "analise": "aceito",
    "justificativa": "Justificativa",
  };

  return await efi.call('medDefense', params: params, body: body);
}