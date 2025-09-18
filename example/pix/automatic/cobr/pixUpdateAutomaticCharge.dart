import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixUpdateAutomaticCharge(efi, '');
  print(response);
}

dynamic pixUpdateAutomaticCharge(EfiPay efi, String txid) async {
  Map<String, dynamic> params = {'txid': 'fc9a4366jf3d4964b5dba6c91a8722d3'};
  dynamic body = {
    'status': 'CANCELADA'
  };
  return await efi.call('pixUpdateAutomaticCharge', params: params, body: body);
}
