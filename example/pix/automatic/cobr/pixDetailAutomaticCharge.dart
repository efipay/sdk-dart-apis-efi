import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixDetailAutomaticCharge(efi, '');
  print(response);
}

dynamic pixDetailAutomaticCharge(EfiPay efi, String txid) async {
  Map<String, dynamic> params = {'txid': 'fc9a4366jf3d4964b5dba6c91a8722d3'};
  return await efi.call('pixDetailAutomaticCharge', params: params);
}
