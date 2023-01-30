import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await updateBillet(efi, 0);
  print(response);
}

dynamic updateBillet(EfiPay efi, int chargeId) async {
  Map<String, dynamic> params = {'id': chargeId};
  dynamic body = {'expire_at': '2024-12-12'};
  return await efi.call('updateBillet', params: params, body: body);
}
