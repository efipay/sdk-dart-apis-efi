import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  credentials['headers'] = {
    'x-idempotency-key': 'et sedaute sint officiapariatur amet tute sum',
  };
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofCreateBiometricPixPayment(efi);
  print(response);
}

dynamic ofCreateBiometricPixPayment(EfiPay efi) async {
  dynamic body = {
    'identificadorVinculo': 'enrollmentId',
    'favorecido': {
      'contaBanco': {
        'nome': 'GORBADOCK SILVA',
        'documento': '01234567890',
        'codigoBanco': '09089356',
        'agencia': '0001',
        'conta': '654984',
        'tipoConta': 'TRAN'
      }
    },
    'pagamento': {
        'valor': '250.00',
    }
  };
  return await efi.call('ofCreateBiometricPixPayment', body: body);
}
