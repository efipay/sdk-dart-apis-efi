import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofReplaceRecurrencyPixParcel(efi);
  print(response);
}

dynamic ofReplaceRecurrencyPixParcel(EfiPay efi) async {
  dynamic params = {
    'identificadorPagamento': '', 
    'endToEndId': ''
  };
  dynamic body = {'valor': '9.99'};
  return await efi.call('ofReplaceRecurrencyPixParcel', params: params, body: body);
}
