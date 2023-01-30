import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await payDetailPayment(efi, 1);
  print(response);
}

dynamic payDetailPayment(EfiPay efi, int id) async {
  dynamic params = {"idPagamento": 1};
  return await efi.call('payDetailPayment', params: params);
}
