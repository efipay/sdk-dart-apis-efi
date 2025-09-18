import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofCancelRecurrencyPix(efi);
  print(response);
}

dynamic ofCancelRecurrencyPix(EfiPay efi) async {
  dynamic params = {'identificadorPagamento': ''};
  return await efi.call('ofCancelRecurrencyPix', params:params);
}
