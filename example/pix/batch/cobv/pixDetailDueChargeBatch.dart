import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixDetailDueChargeBatch(efi, '');
  print(response);
}

dynamic pixDetailDueChargeBatch(EfiPay efi, String loteId) async {
  Map<String, dynamic> params = {'id': loteId};
  return await efi.call('pixDetailDueChargeBatch', params: params);
}
