import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await updateStatementRecurrency(efi, '');
  print(response);
}

dynamic updateStatementRecurrency(EfiPay efi, String identificador) async {
  Map<String, dynamic> params = {'identificador': identificador}; //"diario", "semanal", "mensal"
  dynamic body = {
    'periodicidade': 'diario',
    'status': 'ativo',
    'envia_email': true,
    'comprimir_arquivos': true
  };
  return await efi.call('updateStatementRecurrency', params: params, body: body);
}