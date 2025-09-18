import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofDevolutionSchedulePix(efi);
  print(response);
}

dynamic ofDevolutionSchedulePix(EfiPay efi) async {
  dynamic params = {'identificadorPagamento': ''};
  dynamic body = {'valor': '0.01'};
  return await efi.call('ofDevolutionSchedulePix', params: params, body: body);
}