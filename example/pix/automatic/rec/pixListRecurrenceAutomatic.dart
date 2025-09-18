import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixListRecurrenceAutomatic(efi);
  print(response);
}

dynamic pixListRecurrenceAutomatic(EfiPay efi) async {
  Map<String, dynamic> params = {
    'inicio': '2025-06-12T16:01:35Z',
    'fim': '2025-12-23T16:01:35Z',
//  'cpf': '',
//  'cnpj': '',
//  'locationPresente': #True or False ,
//   'status': '',
//   'convenio': '',
  };
  return await efi.call('pixListRecurrenceAutomatic', params: params);
}