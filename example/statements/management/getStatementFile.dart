import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await getStatementFile(efi, '');
  print(response);
}

dynamic getStatementFile(EfiPay efi, String nome_arquivo) async {
  Map<String, dynamic> params = {'nome_arquivo': nome_arquivo};
  return await efi.call('getStatementFile', params: params);
}