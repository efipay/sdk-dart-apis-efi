import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixUnlinkTxidLocation(efi, 0);
  print(response);
}

dynamic pixUnlinkTxidLocation(EfiPay efi, int id) async {
  Map<String, dynamic> params = {'id': id};
  return await efi.call('pixUnlinkTxidLocation', params: params);
}
