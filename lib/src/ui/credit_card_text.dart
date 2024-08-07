import 'package:flutter/material.dart';
import 'package:u_credit_card/src/constants/ui_constants.dart';

///
class CreditCardText extends StatelessWidget {
  ///
  const CreditCardText(
    this.text, {
    super.key,
    this.textStyle,
    this.changeFontFamily = false,
  });

  ///
  final String text;

  ///
  final TextStyle? textStyle;

  ///
  final bool changeFontFamily;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle != null
          ? changeFontFamily
              ? textStyle
              : textStyle?.copyWith(
                  fontFamily: UiConstants.fontFamily,
                )
          : const TextStyle(
              color: Colors.white,
              letterSpacing: 3.2,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontFamily: UiConstants.fontFamily,
              package: UiConstants.packageName,
            ),
      maxLines: 1,
      overflow: TextOverflow.clip,
    );
  }
}
