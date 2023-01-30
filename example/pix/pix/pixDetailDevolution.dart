import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixDetailDevolution(efi, '', '');
  print(response);
}

dynamic pixDetailDevolution(EfiPay efi, String e2eId, String id) async {
  Map<String, dynamic> params = {'e2eId': e2eId, 'id': id};
  return await efi.call('pixDetailDevolution', params: params);
}
