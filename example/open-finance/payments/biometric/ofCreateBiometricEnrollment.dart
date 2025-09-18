import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  credentials['headers'] = {
    'x-idempotency-key': 'et sedaute sint officiapariatur amet tute sum',
  };
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofCreateBiometricEnrollment(efi);
  print(response);
}

dynamic ofCreateBiometricEnrollment(EfiPay efi) async {
  dynamic body = {
    'pagador': {
      'cpf': '01234567890',
      'idParticipante': '9326f9b2-ae57-42c4-a0d9-acc4ba434696'
    }
  };
  return await efi.call('ofCreateBiometricEnrollment', body: body);
}
