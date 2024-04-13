import 'package:u_credit_card/u_credit_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("u_credit_card")),
      body: const Center(
        child: CreditCardUi(
          cardHolderFullName: 'John Doe',
          cardNumber: '1234567812345678',
          validFrom: '01/23',
          validThru: '01/28',
          topLeftColor: Colors.blue,
          doesSupportNfc: true,
          placeNfcIconAtTheEnd: true,
          cardType: CardType.debit,
          cardProviderLogo: FlutterLogo(),
          cardProviderLogoPosition: CardProviderLogoPosition.right,
          showBalance: true,
          balance: 128.32434343,
          autoHideBalance: true,
          enableFlipping: true,
          cvvNumber: '123',
        ),
      ),
    );
  }
}
