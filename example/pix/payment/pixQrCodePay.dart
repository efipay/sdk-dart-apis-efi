import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixQrCodePay(efi, '');
  print(response);
}

dynamic pixQrCodePay(EfiPay efi, String idEnvio) async {
  Map<String, dynamic> params = {'idEnvio': idEnvio};
  dynamic body = {
    'pagador': {
        'chave': '41bb8f76-e09e-408e-a5d5-ecfb56ff7b03',
        'infoPagador': 'Pagamento de QR Code via API Pix'
    },
    'pixCopiaECola': '00020101021226830014BR.GOV.BCB.PIX2561qrcodespix.sejaefi.com.br/v2 41e0badf811a4ce6ad8a80b306821fce5204000053000065802BR5905EFISA6008SAOPAULO60070503***61040000'
  };
  return await efi.call('pixQrCodePay', params: params, body: body);
}
