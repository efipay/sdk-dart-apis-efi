import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofDevolutionRecurrencyPix(efi);
  print(response);
}

dynamic ofDevolutionRecurrencyPix(EfiPay efi) async {
  dynamic params = {'identificadorPagamento': ''};
  dynamic body = {
    'endToEndId': '',
    'valor': '0.01'
  };
  return await efi.call('ofDevolutionRecurrencyPix', params: params, body: body);
}
