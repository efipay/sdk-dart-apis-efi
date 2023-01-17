import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await detailCarnet(efi, 0);
  print(response);
}

dynamic detailCarnet(EfiPay efi, int carnetId) async {
  Map<String, dynamic> params = {'id': carnetId};
  return await efi.call('detailCarnet', params: params);
}
