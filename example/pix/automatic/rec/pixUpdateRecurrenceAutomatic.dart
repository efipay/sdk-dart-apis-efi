import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixUpdateRecurrenceAutomatic(efi, '');
  print(response);
}

dynamic pixUpdateRecurrenceAutomatic(EfiPay efi, String idRec) async {
  Map<String, dynamic> params = {'idRec': idRec};
  dynamic body = {
    'loc': 108,
    'vinculo': {
        'devedor': {
            'nome': 'Fulano de Tal'
        }
    },
    'calendario': {
        'dataInicial': '2024-04-01'
    },
    'ativacao': {
        'dadosJornada': {
            'txid': '33beb661beda44a8928fef47dbeb2dc5'
        }
    }
  };
  return await efi.call('pixUpdateRecurrenceAutomatic', params: params, body: body);
}
