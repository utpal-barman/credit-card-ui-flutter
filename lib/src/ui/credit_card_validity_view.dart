import 'package:flutter/material.dart';
import 'package:u_credit_card/src/constants/ui_constants.dart';
import 'package:u_credit_card/src/ui/credit_card_text.dart';

///
class CreditCardValidityView extends StatelessWidget {
  ///
  const CreditCardValidityView({
    required this.validFromMasked,
    required this.validThruMasked,
    required this.validFromText,
    required this.validThruText,
    required this.validationTextStyle,
    this.showValidFrom = true,
    this.showValidThru = true,
    this.textStyle,
    this.changeFontFamily = false,
    super.key,
  });

  ///
  final String? validFromMasked;

  ///
  final String validThruMasked;

  /// Determines whether to show the "Valid From" segment on the card.
  ///
  /// If set to `true`, the "Valid From" segment will be displayed.
  /// If set to `false`, it will be hidden.
  /// The default value is `true`.
  final bool showValidFrom;

  /// Determines whether to show the "Valid Thru" segment on the card.
  ///
  /// If set to `true`, the "Valid Thru" segment will be displayed.
  /// If set to `false`, it will be hidden.
  /// The default value is `true`.
  final bool showValidThru;

  ///
  final TextStyle? textStyle;

  ///
  final bool changeFontFamily;

  ///
  final String validFromText;

  ///
  final String validThruText;

  ///
  final TextStyle validationTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showValidFrom)
          Expanded(
            child: Row(
              children: [
                Text(
                  validFromText.toUpperCase(),
                  style: validationTextStyle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(width: 25),
                if (validFromMasked != null)
                  Expanded(
                    flex: 3,
                    child: CreditCardText(
                      validFromMasked!,
                      textStyle: textStyle ??
                          const TextStyle(
                            letterSpacing: 2,
                            fontSize: 9,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            package: UiConstants.packageName,
                          ),
                      changeFontFamily: changeFontFamily,
                    ),
                  ),
              ],
            ),
          ),
        if (showValidFrom) const SizedBox(width: 24),
        Expanded(
          child: Row(
            children: [
              Text(
                validThruText.toUpperCase(),
                style: validationTextStyle,
                textAlign: TextAlign.center,
              ),
              const SizedBox(width: 25),
              Expanded(
                flex: 3,
                child: CreditCardText(
                  validThruMasked,
                  textStyle: textStyle ??
                      const TextStyle(
                        letterSpacing: 2,
                        fontSize: 9,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        package: UiConstants.packageName,
                      ),
                  changeFontFamily: changeFontFamily,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
