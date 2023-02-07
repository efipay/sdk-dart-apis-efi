import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixSplitConfigId(efi);
  print(response);
}

dynamic pixSplitConfigId(EfiPay efi) async {
  dynamic params = {'id': 1};
  dynamic body = {
    'descricao': 'Batatinha frita 1, 2, 3',
    'lancamento': {'imediato': true},
    'split': {
      'divisaoTarifa': 'assumir_total',
      'minhaParte': {'tipo': 'porcentagem', 'valor': '60.00'},
      'repasses': [
        {
          'tipo': 'porcentagem',
          'valor': '15.00',
          'favorecido': {'cpf': '12345678909', 'conta': '1234567'}
        },
        {
          'tipo': 'porcentagem',
          'valor': '25.00',
          'favorecido': {'cpf': '94271564656', 'conta': '7654321'}
        }
      ]
    }
  };
  return await efi.call('pixSplitConfigId', body: body, params: params);
}
