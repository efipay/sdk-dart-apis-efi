import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials['headers'] = {
    'x-idempotency-key': 'et sedaute sint officiapariatur amet tute sum',
  };
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofStartPixPayment(efi);
  print(response);
}

dynamic ofStartPixPayment(EfiPay efi) async {
  dynamic body = {
    'pagador': {
      'idParticipante': '75db457a-612d-4d62-b557-ba9d32b05216',
      'cpf': '12345678909',
    },
    'favorecido': {
      'contaBanco': {
        'codigoBanco': '364',
        'agencia': '0001',
        'documento': '01234567890',
        'nome': 'EfiPay',
        'conta': '200045',
        'tipoConta': 'CACC'
      }
    },
    'valor': '0.01',
    'infoPagador': 'Compra dia xx'
  };
  return await efi.call('ofStartPixPayment', body: body);
}
