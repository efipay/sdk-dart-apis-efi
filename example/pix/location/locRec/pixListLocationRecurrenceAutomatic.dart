import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixListLocationRecurrenceAutomatic(efi);
  print(response);
}

dynamic pixListLocationRecurrenceAutomatic(EfiPay efi) async {
  Map<String, dynamic> params = {
    'inicio': '2022-03-22T00:00:00.000Z',
    'fim': '2025-12-31T00:00:00.000Z'
  };
  return await efi.call('pixListLocationRecurrenceAutomatic', params: params);
}