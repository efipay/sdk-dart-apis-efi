import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await createChargeLinkHistory(efi, 0);
  print(response);
}

dynamic createChargeLinkHistory(EfiPay efi, int chargeId) async {
  dynamic body = {'description': "This charge was not fully paid"};
  Map<String, dynamic> params = {'id': chargeId};
  return await efi.call('createChargeHistory', params: params, body: body);
}
