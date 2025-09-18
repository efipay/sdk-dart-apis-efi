import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixGetReceipt(efi, 0);
  print(response);
}

dynamic pixGetReceipt(EfiPay efi, int txid) async {
  dynamic params = {'txid': txid};
  return await efi.call('pixGetReceipt', params: params);
}