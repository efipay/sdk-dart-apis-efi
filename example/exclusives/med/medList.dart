import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await medList(efi);
  print(response);
}

dynamic medList(EfiPay efi) async {
  dynamic params = {
    "inicio": "2024-06-01T16:01:35Z", 
    "fim": "2024-06-30T16:01:35Z"};
  return await efi.call('medList', params: params);
}
