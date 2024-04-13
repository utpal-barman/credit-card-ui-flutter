import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:u_credit_card/u_credit_card.dart';

///
class CreditCardTopLogo extends StatelessWidget {
  ///
  const CreditCardTopLogo({
    required this.cardType,
    required this.cardProviderLogoPosition,
    this.cardProviderLogo,
    super.key,
    this.currencySymbol = r'$',
    this.balance = 0.0,
    this.showBalance = false,
    this.enableFlipping = false,
    this.autoHideBalance = true,
    this.disableHapticFeedback = false,
  });

  ///
  final CardType cardType;

  ///
  final Widget? cardProviderLogo;

  ///
  final CardProviderLogoPosition cardProviderLogoPosition;

  ///
  final String? currencySymbol;

  ///
  final double? balance;

  ///
  final bool? showBalance;

  ///
  final bool? enableFlipping;

  ///
  final bool? autoHideBalance;

  ///
  final bool? disableHapticFeedback;

  @override
  Widget build(BuildContext context) {
    String getCardTitle(CardType cardType) {
      switch (cardType) {
        case CardType.credit:
          return 'CREDIT';
        case CardType.debit:
          return 'DEBIT';
        case CardType.prepaid:
          return 'PREPAID';
        case CardType.giftCard:
          return 'GIFT CARD';
        case CardType.other:
          return '';
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textDirection: cardProviderLogoPosition.isLeft
          ? TextDirection.rtl
          : TextDirection.ltr,
      children: [
        if (showBalance!)
          _CreditCardBalanceView(
            currencySymbol: currencySymbol,
            balance: balance,
            autoHideBalance: autoHideBalance,
            disableHapticFeedBack: disableHapticFeedback,
          )
        else
          Text(
            getCardTitle(cardType),
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 8,
              letterSpacing: 1.5,
            ),
          ),
        if (enableFlipping!)
          Padding(
            padding: const EdgeInsets.only(right: 72),
            child: Transform.rotate(
              angle: -pi / 4,
              child: const Icon(
                Icons.screen_rotation_rounded,
                color: Colors.white70,
                size: 16,
              ),
            ),
          ),
        cardProviderLogo ?? const SizedBox.shrink(),
      ],
    );
  }
}

class _CreditCardBalanceView extends StatefulWidget {
  const _CreditCardBalanceView({
    required this.currencySymbol,
    required this.balance,
    this.autoHideBalance = true,
    this.disableHapticFeedBack = false,
  });

  final String? currencySymbol;
  final double? balance;
  final bool? autoHideBalance;
  final bool? disableHapticFeedBack;

  @override
  State<_CreditCardBalanceView> createState() => _CreditCardBalanceViewState();
}

class _CreditCardBalanceViewState extends State<_CreditCardBalanceView> {
  bool showBalance = false;

  Future<void> _onBalanceViewClicked() async {
    if (!widget.disableHapticFeedBack!) {
      await HapticFeedback.lightImpact();
    }
    setState(() {
      showBalance = !showBalance;
    });

    await Future<void>.delayed(const Duration(seconds: 2));
    if (mounted) {
      setState(() {
        showBalance = !showBalance;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      curve: Curves.easeInCirc,
      duration: Durations.short3,
      child: AnimatedSwitcher(
        duration: Durations.short3,
        child: showBalance || !widget.autoHideBalance!
            ? Padding(
                key: const ValueKey('Balance'),
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  // ignore: lines_longer_than_80_chars
                  '${widget.currencySymbol}${widget.balance?.toStringAsFixed(2)}',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : GestureDetector(
                onTap: _onBalanceViewClicked,
                child: Container(
                  key: const ValueKey('TapToSee'),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.88),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Text(
                      'TAP TO SEE BALANCE',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
