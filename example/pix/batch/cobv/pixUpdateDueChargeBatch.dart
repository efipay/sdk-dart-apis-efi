import 'package:efipay/efipay.dart';
import '../../../credentials.dart';

void main() async {
  EfiPay efi = EfiPay(credentials);
  dynamic response = await pixUpdateDueChargeBatch(efi, '');
  print(response);
}

dynamic pixUpdateDueChargeBatch(EfiPay efi, String loteId) async {
  Map<String, dynamic> params = {'id': loteId};

  dynamic body = {
    'cobsv': [
        {
            'calendario': {
                'dataDeVencimento': '2025-01-10',
            },
            'txid': 'fb2761260e554ad593c7226beb5cb650',
            'valor': {
                'original': '110.00'
            }
        },
        {
            'calendario': {
                'dataDeVencimento': '2020-01-10',
            },
            'txid': '7978c0c97ea847e78e8849634473c1f1',
            'valor': {
                'original': '110.00'
            }
        }
    ]
  };
  return await efi.call('pixUpdateDueChargeBatch', params: params, body: body);
}
