import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixSendList(efi);
  print(response);
}

dynamic pixSendList(EfiPay efi) async {
  dynamic params = {
    'inicio': '2022-01-22T00:00:00Z',
    'fim': '2024-12-31T23:59:59Z',
    'status': 'REALIZADO',
    'devolucaoPresente': true,
    'paginacao.paginaAtual': 1,
    'paginacao.itensPorPagina': 10
  };
  return await efi.call('pixSendList', params: params);
}
