import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await updateCarnetParcel(efi, 0, 1);
  print(response);
}

dynamic updateCarnetParcel(EfiPay efi, int carnetId, int parcel) async {
  Map<String, dynamic> params = {'id': carnetId, 'parcel': parcel};
  dynamic body = {'expire_at': '2025-01-01'};
  return await efi.call('updateCarnetParcel', params: params, body: body);
}
