import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixSplitUnlinkCharge(efi);
  print(response);
}

dynamic pixSplitUnlinkCharge(EfiPay efi) async {
  dynamic params = {'txid': '1'};
  return await efi.call('pixSplitUnlinkCharge', params: params);
}
