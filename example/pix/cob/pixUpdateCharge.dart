import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixUpdateCharge(efi, '');
  print(response);
}

dynamic pixUpdateCharge(EfiPay efi, String txId) async {
  Map<String, dynamic> params = {'txid': txId};
  dynamic body = {
    'calendario': {'expiracao': 600},
    'chave': '',
    'infoAdicionais': [
      {'nome': 'Nome 01', 'valor': 'valor 01'}
    ]
  };
  return await efi.call('pixUpdateCharge', params: params, body: body);
}
