import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixDeleteEvp(efi, '');
  print(response);
}

dynamic pixDeleteEvp(EfiPay efi, String key) async {
  Map<String, dynamic> params = {
    "chave": key,
  };
  return await efi.call('pixDeleteEvp', params: params);
}
