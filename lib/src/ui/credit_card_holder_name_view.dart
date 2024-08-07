import 'package:flutter/material.dart';
import 'package:u_credit_card/src/constants/ui_constants.dart';
import 'package:u_credit_card/src/ui/credit_card_text.dart';

///
class CreditCardHolderNameView extends StatelessWidget {
  ///
  const CreditCardHolderNameView({
    required this.cardHolderFullName,
    this.textStyle,
    this.changeFontFamily = false,
    super.key,
  });

  ///
  final String cardHolderFullName;

  ///
  final TextStyle? textStyle;

  ///
  final bool changeFontFamily;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 172,
      child: CreditCardText(
        cardHolderFullName.toUpperCase(),
        textStyle: textStyle ?? const TextStyle(
          letterSpacing: 2,
          fontSize: 12,
          fontWeight: FontWeight.w700,
          package: UiConstants.packageName,
          color: Colors.white,
        ),
        changeFontFamily: changeFontFamily,
      ),
    );
  }
}
