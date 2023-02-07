import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixSplitDetailDueCharge(efi);
  print(response);
}

dynamic pixSplitDetailDueCharge(EfiPay efi) async {
  dynamic params = {
    'txid': '1',
  };
  return await efi.call('pixSplitDetailDueCharge', params: params);
}
