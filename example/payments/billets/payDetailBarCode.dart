import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await payDetailBarCode(efi, '1');
  print(response);
}

dynamic payDetailBarCode(EfiPay efi, String codBarras) async {
  dynamic params = {'codBarras': 1};
  return await efi.call('payDetailBarCode', params: params);
}
