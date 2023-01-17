import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixSendDetail(efi, '');
  print(response);
}

dynamic pixSendDetail(EfiPay efi, String e2eId) async {
  Map<String, dynamic> params = {'e2eId': e2eId};
  return await efi.call('pixSendDetail', params: params);
}
