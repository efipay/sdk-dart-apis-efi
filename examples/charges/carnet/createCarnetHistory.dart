import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await createCarnetHistory(efi, 0);
  print(response);
}

dynamic createCarnetHistory(EfiPay efi, int carnetId) async {
  dynamic body = {'description': 'This carnet is about a service'};
  Map<String, dynamic> params = {'id': carnetId};
  return await efi.call('createCarnetHistory', params: params, body: body);
}
