import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await createReport(efi, '', '');
  print(response);
}

dynamic createReport(EfiPay efi, String txId, String key) async {
  Map<String, dynamic> params = {'txid': txId};

  dynamic body = {
    "dataMovimento": "2022-04-24",
    "tipoRegistros": {
      "pixRecebido": true,
      "pixDevolucaoEnviada": false,
      "tarifaPixRecebido": true,
      "pixEnviadoChave": true,
      "pixEnviadoDadosBancarios": false,
      "pixDevolucaoRecebida": true
    }
  };

  return await efi.call('createReport', params: params, body: body);
}
