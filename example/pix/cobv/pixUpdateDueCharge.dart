import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixUpdateDueCharge(efi, '');
  print(response);
}

dynamic pixUpdateDueCharge(EfiPay efi, String txId) async {
  Map<String, dynamic> params = {'txid': txId};

  dynamic body = {
    'devedor': {
      'logradouro': 'Alameda Souza, Numero 80, Bairro Braz',
      'cidade': 'Recife',
      'uf': 'PE',
      'cep': '70011750',
      'cpf': '12345678909',
      'nome': 'Francisco da Silva'
    },
    'valor': {'original': '123.45'},
    'solicitacaoPagador': 'Cobrança dos serviços prestados.'
  };
  return await efi.call('pixUpdateDueCharge', params: params, body: body);
}
