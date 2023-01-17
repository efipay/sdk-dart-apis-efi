import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixDetailDueCharge(efi, "");
  print(response);
}

dynamic pixDetailDueCharge(EfiPay efi, String txId) async {
  Map<String, dynamic> params = {"txid": txId};
  return await efi.call('pixDetailDueCharge', params: params);
}
