import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixSplitLinkDueCharge(efi);
  print(response);
}

dynamic pixSplitLinkDueCharge(EfiPay efi) async {
  dynamic params = {'txid': '1', 'splitConfigId': '1'};
  return await efi.call('pixSplitLinkDueCharge', params: params);
}
