import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixSplitUnlinkDueCharge(efi);
  print(response);
}

dynamic pixSplitUnlinkDueCharge(EfiPay efi) async {
  dynamic params = {'txid': '1'};
  return await efi.call('pixSplitUnlinkDueCharge', params: params);
}
