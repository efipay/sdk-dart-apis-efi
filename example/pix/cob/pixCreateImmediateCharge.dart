import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixCreateImmediateCharge(efi, '');
  print(response);
}

dynamic pixCreateImmediateCharge(EfiPay efi, String key) async {
  dynamic body = {
    'calendario': {'expiracao': 3600},
    'devedor': {'cpf': '04267484171', 'nome': 'Gorbadoc Oldbuck'},
    'valor': {'original': '0.01'},
    'chave': key,
    'solicitacaoPagador': 'Cobrança dos serviços prestados.'
  };
  return await efi.call('pixCreateImmediateCharge', body: body);
}
