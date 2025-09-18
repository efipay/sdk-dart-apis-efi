import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixCreateRecurrenceAutomatic(efi);
  print(response);
}

dynamic pixCreateRecurrenceAutomatic(EfiPay efi) async {
  dynamic body = {
    'vinculo': {
        'contrato': '63100862',
        'devedor': {
            'cpf': '12345678909',
            'nome': 'Fulano de Tal'
        },
        'objeto': 'Serviço de Streamming de Música.'
    },
    'calendario': {
        'dataFinal': '2026-04-01',
        'dataInicial': '2025-06-01',
        'periodicidade': 'MENSAL'
    },
    'valor': {
        'valorRec': '35.00'
    },
    'politicaRetentativa': 'NAO_PERMITE',
    'loc': 108,
    'ativacao': {
        'dadosJornada': {
            'txid': '33beb661beda44a8928fef47dbeb2dc5'
        }
    }
  };
  return await efi.call('pixCreateRecurrenceAutomatic', body: body);
}
