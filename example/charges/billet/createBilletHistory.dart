import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await createChargeHistory(efi, 0);
  print(response);
}

dynamic createChargeHistory(EfiPay efi, int chargeId) async {
  dynamic body = {'description': "This charge was not fully paid"};
  Map<String, dynamic> params = {'id': chargeId};
  return await efi.call('createChargeHistory', params: params, body: body);
}
