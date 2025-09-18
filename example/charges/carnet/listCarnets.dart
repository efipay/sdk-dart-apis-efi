import 'package:efipay/efipay.dart';
import '../../credentials.dart';

void main() async {
  credentials.remove('certificate');
  EfiPay efi = EfiPay(credentials);
  dynamic response = await listCharges(efi);
  print(response);
}

dynamic listCharges(EfiPay efi) async {
  dynamic params = {
    "charge_type": "carnet",
    "begin_date": "2025-01-01", 
    "end_date": "2025-12-31"
    //"customer_document": ""
    //"status": ""
    //"custom_id": ""
    //"value": 
    //"date_of": ""
    //"limit": 
    //"page": 
    //"offset": 
    };
  return await efi.call('listCharges', params: params);
}
