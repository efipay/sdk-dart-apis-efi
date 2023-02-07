import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixSplitLinkCharge(efi);
  print(response);
}

dynamic pixSplitLinkCharge(EfiPay efi) async {
  dynamic params = {
    'txid': '1',
    'splitConfigId': '1',
  };
  return await efi.call('pixSplitLinkCharge', params: params);
}
