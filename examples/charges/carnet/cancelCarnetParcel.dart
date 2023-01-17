import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await cancelCarnetParcel(efi, 0, 0);
  print(response);
}

dynamic cancelCarnetParcel(EfiPay efi, int carnetId, int parcel) async {
  Map<String, dynamic> params = {'id': carnetId, 'parcel': parcel};
  return await efi.call('cancelCarnetParcel', params: params);
}
