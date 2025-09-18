import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await listStatementRecurrences(efi);
  print(response);
}

dynamic listStatementRecurrences(EfiPay efi) async {
  return await efi.call('listStatementRecurrences');
}
