import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await updatePlan(efi, 1);
  print(response);
}

dynamic updatePlan(EfiPay efi, int planId) async {
  Map<String, dynamic> params = {'id': planId};
  dynamic body = {'name': 'Update name Plan'};
  return await efi.call('updatePlan', params: params, body: body);
}
