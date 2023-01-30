import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await settleCarnet(efi, 0);
  print(response);
}

dynamic settleCarnet(EfiPay efi, int carnetId) async {
  Map<String, dynamic> params = {'id': carnetId};
  return await efi.call('settleCarnet', params: params);
}
