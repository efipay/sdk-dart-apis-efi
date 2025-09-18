import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixListAutomaticCharge(efi);
  print(response);
}

dynamic pixListAutomaticCharge(EfiPay efi) async {
  Map<String, dynamic> params = {
    'inicio': '2025-06-12T16:01:35Z',
    'fim': '2025-12-23T16:01:35Z'
//  'idRec': '',
//  'cpf': '',
//  'cnpj': '',
//  'locationPresente': #True or False ,
//   'status': '',
//   'convenio': '',
  };
  return await efi.call('pixListAutomaticCharge', params: params);
}