import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofListAutomaticEnrollment(efi);
  print(response);
}

dynamic ofListAutomaticEnrollment(EfiPay efi) async {
  dynamic params = {
    'inicio': '2024-06-01T00:00:00Z',
    'fim': '2024-09-14T23:59:59Z',
    'status': '',
    'documento': ''
    // 'identificadorAdesao': '',
    // 'idProprio': '',
    // 'documento': ''
  };
  return await efi.call('ofListAutomaticEnrollment', params:params);
}
