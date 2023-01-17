import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await defineBalanceSheetBillet(efi, 0);
  print(response);
}

dynamic defineBalanceSheetBillet(EfiPay efi, int chargeId) async {
  dynamic body = {
    "title": "Balancete Demonstrativo",
    "body": [
      {
        "header": "Demonstrativo de Consumo",
        "tables": [
          {
            "rows": [
              [
                {
                  "align": "left",
                  "color": "#000000",
                  "style": "bold",
                  "text": "Exemplo de despesa",
                  "colspan": 2
                },
                {
                  "align": "left",
                  "color": "#000000",
                  "style": "bold",
                  "text": "Total lançado",
                  "colspan": 2
                }
              ],
              [
                {
                  "align": "left",
                  "color": "#000000",
                  "style": "normal",
                  "text": "Instalação",
                  "colspan": 2
                },
                {
                  "align": "left",
                  "color": "#000000",
                  "style": "normal",
                  "text": "R\$ 100,00",
                  "colspan": 2
                }
              ]
            ]
          }
        ]
      },
      {
        "header": "Balancete Geral",
        "tables": [
          {
            "rows": [
              [
                {
                  "align": "left",
                  "color": "#000000",
                  "style": "normal",
                  "text":
                      "Confira na documentação EfiPay todas as configurações possíveis.",
                  "colspan": 4
                }
              ]
            ]
          }
        ]
      }
    ]
  };

  Map<String, dynamic> params = {"id": chargeId};

  return await efi.call("defineBalanceSheetBillet", params: params, body: body);
}
