import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixListDueChargeBatch(efi, '');
  print(response);
}

dynamic pixListDueChargeBatch(EfiPay efi, String loteId) async {
  Map<String, dynamic> params = {
    'inicio': '2020-01-01T00:00:00Z',
    'fim': '2024-12-01T23:59:59Z'
    };
  return await efi.call('pixListDueChargeBatch', params: params);
}
