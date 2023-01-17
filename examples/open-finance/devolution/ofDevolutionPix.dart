import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofDevolutionPix(efi);
  print(response);
}

dynamic ofDevolutionPix(EfiPay efi) async {
  dynamic params = {'identificadorPagamento': ''};
  dynamic body = {'valorDevolucao': '0.01'};
  return await efi.call('ofDevolutionPix', params: params, body: body);
}
