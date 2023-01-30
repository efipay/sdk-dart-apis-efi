import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofListParticipants(efi);
  print(response);
}

dynamic ofListParticipants(EfiPay efi) async {
  return await efi.call('ofListParticipants');
}
