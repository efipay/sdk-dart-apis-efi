import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixCreateLocationRecurrenceAutomatic(efi);
  print(response);
}

dynamic pixCreateLocationRecurrenceAutomatic(EfiPay efi) async {
  return await efi.call('pixCreateLocationRecurrenceAutomatic');
}
