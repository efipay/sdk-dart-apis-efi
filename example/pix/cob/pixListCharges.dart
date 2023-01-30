import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixListCharges(efi);
  print(response);
}

dynamic pixListCharges(EfiPay efi) async {
  Map<String, dynamic> params = {
    'inicio': '2021-01-01T16:01:35Z',
    'fim': '2021-12-31T16:01:35Z'
  };
  return await efi.call('pixListCharges', params: params);
}
