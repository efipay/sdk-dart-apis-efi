import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await createPlan(efi);
  print(response);
}

dynamic createPlan(EfiPay efi) async {
  dynamic body = {'name': "My first plan", 'repeats': 12, 'interval': 2};
  return await efi.call('createPlan', body: body);
}
