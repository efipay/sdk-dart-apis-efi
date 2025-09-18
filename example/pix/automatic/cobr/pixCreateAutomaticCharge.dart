import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixCreateAutomaticCharge(efi);
  print(response);
}

dynamic pixCreateAutomaticCharge(EfiPay efi) async {
  dynamic body = {
    'idRec': 'RR1234567820240115abcdefghijk',
    'infoAdicional': 'Serviços de Streamming de Música e Filmes.',
    'calendario': {
        'dataDeVencimento': '2025-05-15'
    },
    'valor': {
        'original': '106.07'
    },
    'ajusteDiaUtil': true,
    'devedor': {
        'cep': '89256140',
        'cidade': 'Uberlândia',
        'email': 'abc.sebaastiao.tavares@mail.com',
        'logradouro': 'Alameda Silva 1056',
        'uf': 'MG',
    },
    'recebedor': {
        'agencia': '0001',
        'conta': '012345',
        'tipoConta': 'CORRENTE'
    }
  };
  return await efi.call('pixCreateAutomaticCharge', body: body);
}
