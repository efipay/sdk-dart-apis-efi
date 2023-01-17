import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await sendCarnetParcelEmail(efi, 0, 1);
  print(response);
}

dynamic sendCarnetParcelEmail(EfiPay efi, int carnetId, int parcel) async {
  dynamic body = {'email': 'oldbuck@sejaefi.com.br'};
  Map<String, dynamic> params = {'id': carnetId, 'parcel': parcel};
  return await efi.call('sendCarnetParcelEmail', params: params, body: body);
}
