import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixRetryRequestAutomatic(efi);
  print(response);
}

dynamic pixRetryRequestAutomatic(EfiPay efi) async {
  Map<String, dynamic> params = {
    'txid': '',
    'data': ''
  };
  return await efi.call('pixRetryRequestAutomatic', params: params);
}