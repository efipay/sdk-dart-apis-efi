import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await detailCharge(efi, 0);
  print(response);
}

dynamic detailCharge(EfiPay efi, int chargeId) async {
  Map<String, dynamic> params = {'id': chargeId};
  return await efi.call('detailCharge', params: params);
}
