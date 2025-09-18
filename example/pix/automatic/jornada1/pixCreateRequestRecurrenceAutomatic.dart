import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixCreateRequestRecurrenceAutomatic(efi);
  print(response);
}

dynamic pixCreateRequestRecurrenceAutomatic(EfiPay efi) async {
  dynamic body = {
    'idRec': 'RN123456782024011577825445612',
    'calendario': {
        'dataExpiracaoSolicitacao': '2025-05-20T12:17:11.926Z',
    },
    'destinatario': {
        'agencia': '2569',
        'conta': '550689',
        'cpf': '12345678909',
        'ispbParticipante': '91193552'
    },
  };
  return await efi.call('pixCreateRequestRecurrenceAutomatic', body: body);
}
