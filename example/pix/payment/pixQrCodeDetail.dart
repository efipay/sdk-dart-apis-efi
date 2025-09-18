import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixQrCodeDetail(efi);
  print(response);
}

dynamic pixQrCodeDetail(EfiPay efi) async {
  dynamic body = {
    'pixCopiaECola': '00020101021226830014BR.GOV.BCB.PIX2561qrcodespix.sejaefi.com.br/v2 41e0badf811a4ce6ad8a80b306821fce5204000053000065802BR5905EFISA6008SAOPAULO60070503***61040000'
  };
  return await efi.call('pixQrCodeDetail', body: body);
}
