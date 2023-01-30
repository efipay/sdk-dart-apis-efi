import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixDetailCharge(efi, '');
  print(response);
}

dynamic pixDetailCharge(EfiPay efi, String txId) async {
  Map<String, dynamic> params = {'txid': txId};
  return await efi.call('pixDetailCharge', params: params);
}
