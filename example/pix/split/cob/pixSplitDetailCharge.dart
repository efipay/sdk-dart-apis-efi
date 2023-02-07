import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixSplitDetailCharge(efi);
  print(response);
}

dynamic pixSplitDetailCharge(EfiPay efi) async {
  dynamic params = {
    'txid': '1',
  };
  return await efi.call('pixSplitDetailCharge', params: params);
}
