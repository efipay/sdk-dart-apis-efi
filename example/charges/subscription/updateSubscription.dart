import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await updateSubscription(efi, 1);
  print(response);
}

dynamic updateSubscription(EfiPay efi, int subscriptionId) async {
  Map<String, dynamic> params = {'id': subscriptionId};

  dynamic body = {
    'plan_id': 1,
    'customer': {
        'email': "gorbadoc.oldbuck@gmail.com",
        'phone_number': "31123456789"
    },
    'plan_id': 3,
    'items': [{
        'name': "Product 1", 
        'value': 1000, 
        'amount': 1
        }
    ],
    'shippings': [{
        'name': "frete", 
        'value': 1800
        }
    ],
  };

  return await efi.call('updateSubscription', params: params, body: body);
}
