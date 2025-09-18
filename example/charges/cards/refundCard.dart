import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await refundCard(efi, 1);
  print(response);
}

dynamic refundCard(EfiPay efi, int charge_id) async {
  Map<String, dynamic> params = {'id': charge_id};

  dynamic body = {'amount': 1};

  return await efi.call('refundCard', params: params, body: body);
}
