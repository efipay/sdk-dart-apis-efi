import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await sendCarnetEmail(efi, 0);
  print(response);
}

dynamic sendCarnetEmail(EfiPay efi, int carnetId) async {
  dynamic body = {'email': 'oldbuck@sejaefi.com.br'};
  Map<String, dynamic> params = {'id': carnetId};
  return await efi.call('sendCarnetEmail', params: params, body: body);
}
