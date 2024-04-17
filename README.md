# uCreditCard 💳
### Credit Card UI as Flutter Widget 💎

[![pub package](https://img.shields.io/pub/v/u_credit_card.svg?logo=dart&logoColor=00b9fc)](https://pub.dartlang.org/packages/u_credit_card)
[![Last Commits](https://img.shields.io/github/last-commit/utpal-barman/u-credit-card-flutter?logo=git&logoColor=white)](https://github.com/utpal-barman/u-credit-card-flutter/commits/main)
[![Pull Requests](https://img.shields.io/github/issues-pr/utpal-barman/u-credit-card-flutter?logo=github&logoColor=white)](https://github.com/utpal-barman/u-credit-card-flutter/pulls)
[![Code size](https://img.shields.io/github/languages/code-size/utpal-barman/u-credit-card-flutter?logo=github&logoColor=white)](https://github.com/utpal-barman/u-credit-card-flutter)
[![License](https://img.shields.io/github/license/utpal-barman/u-credit-card-flutter?logo=open-source-initiative&logoColor=green)](https://github.com/utpal-barman/u-credit-card-flutter/blob/main/LICENSE)


🔥 "uCreditCard" is a Flutter package that offers a customizable solution for showing the UI of credit cards within your app. Elevate user engagement with captivating flip animations and enhance your app's visual appeal effortlessly!

<p align="center">
<img src="https://user-images.githubusercontent.com/16848599/233195178-b4fb8007-ba2e-48ed-8020-7a0854d5038c.png" width="700"/>
</p>


### Resources 📚
- [Documentation](https://pub.dev/documentation/u_credit_card/latest/u_credit_card/CreditCardUi-class.html)
- [Pub Package](https://pub.dev/packages/u_credit_card)
- [GitHub Repository](https://github.com/utpal-barman/u-credit-card-flutter)


## Getting Started: Installation 💻

**👉 In order to start using Credit Card UI you must have the [Flutter SDK](https://docs.flutter.dev/get-started/install) installed on your machine.**

Add `u_credit_card` to your `pubspec.yaml`:

```yaml
dependencies:
  u_credit_card: ^1.3.0
```

Install it:

```sh
flutter packages get
```

---


## Usage
To use the `CreditCardUi()` widget, import the package:

``` dart
import 'package:u_credit_card/u_credit_card.dart';
```

Create widget of `CreditCardUi(...)` with the required parameters:

``` dart
CreditCardUi(
  cardHolderFullName: 'John Doe',
  cardNumber: '1234567812345678',
  validThru: '10/24',
),
```

<img width="432" alt="u_credit_card_basic_setup" src="https://user-images.githubusercontent.com/16848599/232335773-5e6fdd6e-a4d9-4c01-a202-48cbca935cbe.png">


This will create a credit card user interface with the cardholder's name, card number, and validity date. For more advanced usage, see the following parameters:

### Parameters

| Name                        | Type                       | Description                                                                                                                                                                                                             |
|-----------------------------|----------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `cardHolderFullName`        | `String`                   | The cardholder's full name. This is a required parameter.                                                                                                                                                               |
| `cardNumber`                | `String`                   | The full credit card number. This is a required parameter.                                                                                                                                                              |
| `validThru`                 | `String`                   | The validity date of the card. It must be in the format "mm/yy". This is a required parameter.                                                                                                                          |
| `validFrom`                 | `String`                   | The valid from the date of the card. It must be in the format "mm/yy". This parameter is optional.                                                                                                                      |
| `topLeftColor`              | `Color`                    | The top-left gradient color of the card. The default value is `Colors.purple`.                                                                                                                                          |
| `bottomRightColor`          | `Color`                    | The bottom-right gradient color of the card. If not specified, a darker version of the `topLeftColor` will be used.                                                                                                     |
| `doesSupportNfc`            | `bool`                     | A boolean value to indicate if the card supports NFC feature. The default value is `true`.                                                                                                                              |
| `placeNfcIconAtTheEnd`      | `bool`                     | A boolean value to place the NFC icon at the opposite side of the chip. The default value is `false`.                                                                                                                   |
| `cardType`                  | `CardType`                 | Specify the type of the card to display. By default, the value is set to `CardType.credit`. You can set it to `CardType.other` if you prefer not to specify a card type. This is optional.                              |
| `creditCardType`                  | `CreditCardType`                 | Specify the type of the credit card payment network logo to display. You can set it to `CreditCardType.none` if you prefer not to specify a card type and not show on the card UI. This is optional.                              |
| `cardProviderLogo`          | `Widget`                   | Provide a widget for the logo of the card provider. If this parameter is not set, the card will be displayed without a logo. This is optional.                                                                          |
| `cardProviderLogoPosition`  | `CardProviderLogoPosition` | Set the position of the card provider logo on the card. The default value is `CardProviderLogoPosition.right`. You can set it to `CardProviderLogoPosition.left` or `CardProviderLogoPosition.right`. This is optional. |
| `backgroundDecorationImage` | `DecorationImage`          | Set a background image for the card. This parameter supports both asset and network images. If this parameter is not set, the card will be displayed without a background image. This is optional. |
| `showValidThru`             | `bool`                     | Indicates whether to show the "Valid Thru" section on the card. If set to `false`, the "Valid Thru" section will be hidden. By default, this value is `true`.                                                               |
| `showValidFrom`             | `bool`                     | Indicates whether to show the "Valid From" section on the card. If set to `false`, the "Valid From" section will be hidden. By default, this value is `true`.                                                               |
| `currencySymbol`             | `String`                     | The symbol used to represent the currency. By default, it uses US Dollar sign ($).                                                               |
| `balance`             | `bool`                     | The balance amount. By default, this value is 0.                                                               |
| `showBalance`             | `bool`                     | A boolean flag indicating whether to show the balance. By default, this value is `false`.                                                               |
| `enableFlipping`             | `bool`                     | A boolean flag indicating whether card flipping is enabled. By default, this value is `false`.                                                               |
| `autoHideBalance`             | `bool`                     | A boolean flag indicating to enable the auto hiding balance feature. In this case, the placeholder will be shown instead of the balance. By default it is `false`.
| `cvvNumber`             | `bool`                     | CVV number of the card, use \*\*\* if you think this is sensitive, by default it will show \*\*\*.                                                               |
| `disableHapticFeedBack`             | `bool`                     | A boolean flag to disable the haptic feedback. Example — card flipping or tapping on placeholder to see balance
| `width`             | `double`                     | A double value to set the width of the card, maximum value is 300.




#### Example
``` dart
CreditCardUi(
  cardHolderFullName: 'John Doe',
  cardNumber: '1234567812345678',
  validFrom: '01/23',
  validThru: '01/28',
  topLeftColor: Colors.blue,
),
```
<img width="432" alt="u_credit_card_nfc_basic" src="https://user-images.githubusercontent.com/16848599/232335806-159f4873-7fcb-46e0-b559-bc5a59ab61bf.png">

Get ready to create a sleek and stylish credit card interface with just a few lines of code! With this package, you can easily customize the cardholder's name, card number, validity dates, and gradient colors to make it uniquely yours.

By default, the card will have a chic blue gradient and an NFC icon. But don't worry, if you don't want the NFC icon, simply pass `doesSupportNfc: false`.

Want to switch things up and place the NFC icon on the opposite side of the chip? No problem! Just enable it by passing `placeNfcIconAtTheEnd: true`, but remember to also pass `doesSupportNfc: true`.

Let's make your app look as sleek as that shiny new credit card!

``` dart
CreditCardUi(
    cardHolderFullName: 'John Doe',
    cardNumber: '1234567812345678',
    validFrom: '01/23',
    validThru: '01/28',
    topLeftColor: Colors.blue,
    doesSupportNfc: true,
    placeNfcIconAtTheEnd: true, // 👈 NFC icon will be at the end,
),
```

<img width="432" alt="u_credit_card_nfc" src="https://user-images.githubusercontent.com/16848599/232332749-92d270b6-786d-4cb4-bc80-71654ce6fd56.png">



#### Custom Gradient

``` dart
CreditCardUi(
  cardHolderFullName: 'John Doe',
  cardNumber: '1234567812345678',
  validThru: '10/24',
  topLeftColor: Colors.red,
  bottomRightColor: Colors.purpleAccent,
),
```
This will create a credit card user interface with a red-to-purple gradient.

<img width="432" alt="u_credit_card_gradient" src="https://user-images.githubusercontent.com/16848599/232333158-e0a3f488-cb36-4142-91a7-12d7d9546fca.png">


#### Setting the card width

If you want to set the width of the card, use `width:` property.
Better NOT wrap with `SizedBox(width: ..., child: CreditCardUi(....))`, instead use `width:` right from the `CreditCardUi()`



``` dart
CreditCardUi(
  width: 300, // 👈 this will set the width of the card
  cardHolderFullName: 'John Doe',
  cardNumber: '1234567812345678',
  validThru: '10/24',
  topLeftColor: Colors.red,
  bottomRightColor: Colors.purpleAccent,
),
```

Note: Setting up any value more than 300 is not considered, maximum width can be 300 only.

#### Additional Customizations
To further customize the card, you can add a background image by using the `backgroundDecorationImage` property. Additionally, you can include a logo for the card provider using the `cardProviderLogo` property. This logo can be positioned on either the left or the right side of the card using the `cardProviderLogoPosition` property.

If you want to specify a particular card type to display, you can set it using the `cardType` property. If you prefer not to specify a card type, you can set `cardType: CardType.other`.

Here is an example of how to use these customization options:

Example:
``` dart
CreditCardUi(
    cardHolderFullName: 'John Doe',
    cardNumber: '1234567812345678',
    validFrom: '01/23',
    validThru: '01/28',
    topLeftColor: Colors.blue,
    doesSupportNfc: true,
    placeNfcIconAtTheEnd: true,
    cardType: CardType.debit,
    cardProviderLogo: FlutterLogo(), // 👈 Set your logo here, supports any widget
    cardProviderLogoPosition: CardProviderLogoPosition.right,
    backgroundDecorationImage: DecorationImage(
    fit: BoxFit.cover,
    image: NetworkImage( // 👈 `AssetImage` is also supported
        'https://....',
      ),
    ),
),
```



<img width="432" alt="Screenshot_2023-04-20_at_2 02 42_AM-removebg-preview" src="https://user-images.githubusercontent.com/16848599/233195568-5a197e2b-115c-46b1-876c-3428726f38cb.png">


To display the balance of your card, simply set `showBalance: true` and provide the balance amount using `balance: 200.0` (any double value). Enabling `autoHideBalance: true` will generate a placeholder labeled "Tap to see balance". Users can then tap on this placeholder to reveal the balance.

```dart
CreditCardUi(
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
),
```

#### Card Flipping Animation
To enable the flipping animation by default, simply set the property `enableFlipping: true`. You can set CVV by `cvvNumber: 000`.

```dart
CreditCardUi(
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
    enableFlipping: true, // 👈 Enables the flipping
    cvvNumber: '123', // 👈 CVV number to be shown on the back of the card
),
```

<img src="https://github.com/utpal-barman/u-credit-card-flutter/assets/16848599/2dcf106f-50d4-4089-b234-ff5529b3e946" width="432" />


ধন্যবাদ

---

## Inspiration
There are already many credit card packages out there, but none of them look realistic. So, I've decided to create something that will look the same as our cards in real life. Additionally, this project was inspired by a [Native Android library](https://github.com/vinaygaba/CreditCardView).


## Contributor

<a href="https://www.linkedin.com/in/utpal-barman/">
  <img src="https://user-images.githubusercontent.com/16848599/232288339-ecbd6cb1-3210-4304-b1e1-bc8434e290a8.png" width="100px" alt="Utpal Barman" style="border-radius:50%"/> <br /> <b>Utpal Barman 🇧🇩</b>
</a>
<br/> <br/>
<p>
 <a href="https://www.linkedin.com/in/utpal-barman/">
        <img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white"
            alt="Contact Author"/>
 </a>
</p>

## License

This package is released under the [BSD 3-Clause License](https://raw.githubusercontent.com/utpal-barman/u-credit-card-flutter/main/LICENSE).

