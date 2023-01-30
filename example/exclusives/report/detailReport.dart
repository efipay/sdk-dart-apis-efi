import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await detailReport(efi, "");
  print(response);
}

dynamic detailReport(EfiPay efi, String id) async {
  Map<String, dynamic> params = {"id": id};
  return await efi.call('detailReport', params: params);
}
