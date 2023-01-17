import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await settleCarnetParcel(efi, 0, 1);
  print(response);
}

dynamic settleCarnetParcel(EfiPay efi, int carnetId, int parcel) async {
  Map<String, dynamic> params = {'id': carnetId, 'parcel': parcel};
  return await efi.call('settleCarnetParcel', params: params);
}
