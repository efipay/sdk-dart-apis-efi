import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await deletePlan(efi, 85556);
  print(response);
}

dynamic deletePlan(EfiPay efi, int planId) async {
  Map<String, dynamic> params = {'id': planId};
  return await efi.call('deletePlan', params: params);
}
