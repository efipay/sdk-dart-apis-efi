import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixCreateLocation(efi);
  print(response);
}

dynamic pixCreateLocation(EfiPay efi) async {
  dynamic body = {'tipoCob': 'cob'};
  return await efi.call('pixCreateLocation', body: body);
}
