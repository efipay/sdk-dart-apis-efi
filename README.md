<h1 align="center">SDK Dart para APIs Efí Pay</h1>

![Banner APIs Efí Pay](https://gnetbr.com/BJgSIUhlYs)

---

[![Curtidas](https://img.shields.io/pub/likes/efipay?style=flat-square)](https://pub.dev/packages/efipay)
[![Pontos](https://img.shields.io/pub/points/efipay?style=flat-square)](https://pub.dev/packages/efipay)
[![Popularidade](https://img.shields.io/pub/popularity/efipay?style=flat-square)](https://pub.dev/packages/efipay)
[![Versão](https://img.shields.io/pub/v/efipay?style=flat-square)](https://pub.dev/packages/efipay)

SDK em Dart para integração com as APIs Efí para emissão de Pix, boletos, carnês, cartão de crédito, assinatura, link de pagamento, marketplance, Pix via Open Finance, pagamento de boletos, dentre outras funcionalidades.
Para mais informações sobre [parâmetros](http://sejaefi.com.br/api) e [valores/tarifas](http://sejaefi.com.br/tarifas) consulte nosso site.

---

Ir para:

- [Instalação](#instalação)
- [Começando](#começando)
- [Exemplos](#exemplos)
- [Documentação Adicional](#documentação-adicional)
- [Licença](#licença)

## **Instalação**

Para usar este plugin, adicione gerencianet como [uma dependência em seu arquivo pubspec.yaml.](https://flutter.dev/docs/development/packages-and-plugins/using-packages)


## Começando

Em seguida, inicialize o plugin de preferência no initState do seu widget.

```
...
import 'package:efipay/efipay.dart';

class _PaymentPageState extends State<PaymentPage> {
  var config = {
    'client_id': 'YOUR_CLIENT_ID',
    'client_secret': 'YOU_CLIENT_SECRET',
    'sandbox': false,
    'certificate': '',
    'account_id': 'YOU_ACCOUNT_ID'
  };
  EfiPay efipay;

  @override
  void initState() {
    this.efipay  = EfiPay(config);
  }

}
...
```

## **Exemplos**

Você pode consultar todos os exemplos disponiveis para Flutter, [clicando aqui](https://github.com/efipay/sdk-dart-apis-efi/tree/main/example).

## **Documentação Adicional**

A documentação completa com todos os endpoints e detalhes da API está disponível em https://dev.efipay.com.br/.

## **Licença**

[MIT](LICENSE)