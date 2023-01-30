import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await listPlans(efi);
  print(response);
}

dynamic listPlans(EfiPay efi) async {
  Map<String, dynamic> params = {'limit': 1, 'offset': 0};
  return await efi.call('listPlans', params: params);
}
