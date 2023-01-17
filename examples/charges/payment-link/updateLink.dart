import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await updateChargeLink(efi, 520003053);
  print(response);
}

dynamic updateChargeLink(EfiPay efi, int chargeId) async {
  dynamic body = {"expire_at": "2024-12-13"};
  Map<String, dynamic> params = {"id": chargeId};
  return await efi.call("updateChargeLink", params: params, body: body);
}
