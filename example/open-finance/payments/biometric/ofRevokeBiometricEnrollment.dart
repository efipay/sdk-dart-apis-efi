import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  credentials['headers'] = {
    'x-idempotency-key': 'et sedaute sint officiapariatur amet tute sum',
  };
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofRevokeBiometricEnrollment(efi);
  print(response);
}

dynamic ofRevokeBiometricEnrollment(EfiPay efi) async {
  dynamic body = {
    'identificadorVinculo': 'urn:efi:ae71713f-875b-4af3-9d85-0bcb43288847',
    'motivo': 'Encerramento de contrato de vinculo',
  };
  return await efi.call('ofRevokeBiometricEnrollment', body: body);
}
