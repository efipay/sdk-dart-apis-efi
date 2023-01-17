import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixGenerateQRCode(efi, 0);
  print(response);
}

dynamic pixGenerateQRCode(EfiPay efi, int id) async {
  Map<String, dynamic> params = {"id": id};
  return await efi.call("pixGenerateQRCode", params: params);
}
