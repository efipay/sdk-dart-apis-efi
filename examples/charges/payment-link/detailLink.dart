import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await detailLink(efi, 520003053);
  print(response);
}

dynamic detailLink(EfiPay efi, int chargeId) async {
  Map<String, dynamic> params = {'id': chargeId};
  return await efi.call('detailCharge', params: params);
}
