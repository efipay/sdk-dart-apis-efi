import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofCancelSchedulePix(efi);
  print(response);
}

dynamic ofCancelSchedulePix(EfiPay efi) async {
  dynamic params = {'identificadorPagamento': ''};
  return await efi.call('ofCancelSchedulePix', params:params);
}
