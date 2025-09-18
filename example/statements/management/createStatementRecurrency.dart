import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await createStatementRecurrency(efi);
  print(response);
}

dynamic createStatementRecurrency(EfiPay efi) async {
  dynamic body = {
    'periodicidade': 'diario',
    'envia_email': true,
    'comprimir_arquivos': true
  };
  return await efi.call('createStatementRecurrency', body: body);
}