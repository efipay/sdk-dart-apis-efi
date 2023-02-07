import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixSplitDetailConfig(efi);
  print(response);
}

dynamic pixSplitDetailConfig(EfiPay efi) async {
  dynamic params = {'id': 1};

  return await efi.call('pixSplitConfigId', params: params);
}
