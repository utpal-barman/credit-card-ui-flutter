import 'package:flutter_test/flutter_test.dart';
import 'package:u_credit_card/src/utils/credit_card_helper.dart';

void main() {
  group('CreditCardHelper.maskAndFormatCreditCardNumber', () {
    test('masks and formats the card number correctly', () {
      const fakeCardNumber = '1234567812345678';
      const expectedOutput = '1234 **** **** 5678';

      final maskedNumber = CreditCardHelper.maskAndFormatCreditCardNumber(
        fakeCardNumber,
      );

      expect(maskedNumber, expectedOutput);
    });

    test('returns the unmasked card number correctly when masking is disabled',
        () {
      const fakeCardNumber = '1234567812345678';
      const expectedOutput = '1234 5678 1234 5678';

      final unmaskedNumber = CreditCardHelper.maskAndFormatCreditCardNumber(
        fakeCardNumber,
        shouldMaskCardNumber: false,
      );

      expect(unmaskedNumber, expectedOutput);
    });
  });
}
