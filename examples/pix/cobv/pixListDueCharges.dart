import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixListDueCharges(efi);
  print(response);
}

dynamic pixListDueCharges(EfiPay efi) async {
  Map<String, dynamic> params = {
    'inicio': '2020-10-22T16:01:35Z',
    'fim': '2022-10-23T16:01:35Z'
  };

  return await efi.call('pixListDueCharges', params: params);
}
