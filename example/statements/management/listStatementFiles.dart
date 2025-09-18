import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await listStatementFiles(efi);
  print(response);
}

dynamic listStatementFiles(EfiPay efi) async {
  return await efi.call('listStatementFiles');
}
