import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await ofCreateAutomaticPixPayment(efi);
  print(response);
}

dynamic ofCreateAutomaticPixPayment(EfiPay efi) async {
  dynamic body = {
    'identificadorAdesao': 'urn:efi:19ba4105-9ae2-4637-89f2-96506d3c8770',
    'pagamento': {
      'valor': '9.99',
      'data': '',
      'codigoCidadeIBGE': '5300108',
      'infoPagador': 'Parcela 2x20'
    }
  };
  return await efi.call('ofCreateAutomaticPixPayment', body: body);
}
