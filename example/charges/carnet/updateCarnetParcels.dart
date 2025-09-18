import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await updateCarnetParcels(efi, 1);
  print(response);
}

dynamic updateCarnetParcels(EfiPay efi, int carnetId) async {
  Map<String, dynamic> params = {'id': carnetId};
  dynamic body = {
    "parcels": [
      {
        "parcel": 1, 
        "expire_at": "2024-01-10"
      },
      {
        "parcel": 2, 
        "expire_at": "2024-02-11"
      },
      {
        "parcel": 3, 
        "expire_at": "2024-03-15"
      },
      {
        "parcel": 4, 
        "expire_at": "2024-04-19"
      }
    ]
  };
  return await efi.call('updateCarnetParcels', params: params, body: body);
}