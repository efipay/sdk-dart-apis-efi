import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await payListPayments(efi);
  print(response);
}

dynamic payListPayments(EfiPay efi) async {
  dynamic params = {"dataInicio": "2020-10-22", "dataFim": "2022-12-31"};
  return await efi.call('payListPayments', params: params);
}
