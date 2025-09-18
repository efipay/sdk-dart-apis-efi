import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  credentials['headers'] = {
    'x-idempotency-key': 'et sedaute sint officiapariatur amet tute sum',
  };
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofUpdateAutomaticEnrollment(efi);
  print(response);
}

dynamic ofUpdateAutomaticEnrollment(EfiPay efi) async {
  dynamic body = {
    'identificador': 'urn:efi:19ba4105-9ae2-4637-89f2-96506d3c8770',
    'nomeFavorecido': 'Marco Antonio de Brito',
    'status': 'revogado',
    'dataExpiracao': '2021-05-21',
    'valorMaximo': '4.22'
  };
  return await efi.call('ofUpdateAutomaticEnrollment', body: body);
}
