import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixCreateCharge(efi, '', '');
  print(response);
}

dynamic pixCreateCharge(EfiPay efi, String txId, String key) async {
  Map<String, dynamic> params = {'txid': txId};

  dynamic body = {
    'calendario': {'expiracao': 3600},
    'devedor': {'cpf': '04267484171', 'nome': 'Gorbadoc Oldbuck'},
    'valor': {'original': '0.01'},
    'chave': key,
    'solicitacaoPagador': 'Cobrança dos serviços prestados.'
  };
  return await efi.call('pixCreateCharge', params: params, body: body);
}
