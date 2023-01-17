import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await getInstallments(efi);
  print(response);
}

dynamic getInstallments(EfiPay efi) async {
  Map<String, dynamic> params = {'brand': 'visa', 'total': 5000};
  return await efi.call('getInstallments', params: params);
}
