import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await getNotification(efi, '');
  print(response);
}

dynamic getNotification(EfiPay efi, String token) async {
  Map<String, dynamic> params = {'token': token};
  return await efi.call('getNotification', params: params);
}
