import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixDetailReceived(efi, '');
  print(response);
}

dynamic pixDetailReceived(EfiPay efi, String e2eId) async {
  Map<String, dynamic> params = {'e2eId': e2eId};
  return await efi.call('pixDetailReceived', params: params);
}
