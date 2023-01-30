import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await payRequestBarCode(efi);
  print(response);
}

dynamic payRequestBarCode(EfiPay efi) async {
  dynamic params = {"codBarras": 1};

  dynamic body = {
    "valor": 9300,
    "dataPagamento": "2022-06-17",
    "descricao": "Pagamento de boleto, teste API Pagamentos"
  };

  return await efi.call('payRequestBarCode', params: params, body: body);
}
