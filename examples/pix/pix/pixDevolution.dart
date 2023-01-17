import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixDevolution(efi, '', '');
  print(response);
}

dynamic pixDevolution(EfiPay efi, String e2eId, String id) async {
  dynamic body = {'valor': '0.01'};
  Map<String, dynamic> params = {'e2eId': e2eId, 'id': id};
  return await efi.call('pixDevolution', body: body, params: params);
}
