import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixReceivedList(efi);
  print(response);
}

dynamic pixReceivedList(EfiPay efi) async {
  Map<String, dynamic> params = {
    'inicio': '2022-01-01T16:01:35Z',
    'fim': '2022-12-31T16:01:35Z'
  };
  return await efi.call('pixReceivedList', params: params);
}
