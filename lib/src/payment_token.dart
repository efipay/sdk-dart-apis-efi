import 'dart:convert';
import 'dart:io';
import 'package:encrypt/encrypt.dart';
import 'package:pointycastle/asymmetric/api.dart';

/// This class is responsible for carrying out requests that generate a valid Payment Token
class PaymentToken {
  static dynamic generate(Map card, dynamic config) async {
    if (!config.containsKey('accountId') || config['accountId'].isEmpty) {
      throw new Exception("account_id not found");
    }
    dynamic salt = await getTokenizer(config);
    card["salt"] = salt['data'];
    dynamic key = await getKey(config);
    String encript = await encriptData(key['data'], json.encode(card));
    return await saveCard({'data': encript}, config);
  }

  static Future<dynamic> saveCard(dynamic body, dynamic config) async {
    String url = config["sandbox"]
        ? 'https://sandbox.gerencianet.com.br/v1/card'
        : 'https://tokenizer.gerencianet.com.br/card';
    HttpClient client = new HttpClient();
    HttpClientRequest request = await client.openUrl("post", Uri.parse(url));
    request.headers.add('account-code', config['accountId']);
    String bodyEncode = json.encode(body);
    request.headers.add('Content-Type', 'application/json');
    request.contentLength = bodyEncode.length;
    request.write(bodyEncode);
    HttpClientResponse response = await request.close();
    String reply = await response.transform(utf8.decoder).join();
    return json.decode(reply);
  }

  static Future<dynamic> getTokenizer(dynamic config) async {
    String url = 'https://tokenizer.gerencianet.com.br/salt';
    HttpClient client = new HttpClient();
    HttpClientRequest request = await client.openUrl("get", Uri.parse(url));
    request.headers.add('account-code', config['accountId']);
    HttpClientResponse response = await request.close();
    String reply = await response.transform(utf8.decoder).join();
    return json.decode(reply);
  }

  static Future<dynamic> getKey(dynamic config) async {
    String url = config["sandbox"]
        ? 'https://sandbox.gerencianet.com.br/v1/pubkey?code=' +
            config["accountId"]
        : 'https://api.gerencianet.com.br/v1/pubkey?code=' +
            config["accountId"];
    HttpClient client = new HttpClient();
    HttpClientRequest request = await client.openUrl("get", Uri.parse(url));
    HttpClientResponse response = await request.close();
    String reply = await response.transform(utf8.decoder).join();
    return json.decode(reply);
  }

  static Future<String> encriptData(String public, String text) async {
    final parser = RSAKeyParser();
    final publicKey = parser.parse(public) as RSAPublicKey;
    Encrypter encrypter = Encrypter(RSA(publicKey: publicKey));
    Encrypted encrypted = encrypter.encrypt(text);
    return encrypted.base64;
  }
}
