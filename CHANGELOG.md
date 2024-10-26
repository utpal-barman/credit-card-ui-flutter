# Changelog

All notable changes to this project will be documented in this file.

## [1.4.0] 🔧

### Features
- Added `shouldMaskCardNumber` parameter to control the masking of the card number.

## [1.3.1] 🐞

### Fixes
- Resolved an issue with the card being invisible when no width is defined.

## [1.3.0] 🛑

### Deprecated
- `scale` parameter is deprecated and will be removed in a future version. Use the `width` parameter instead.

### Features

- Introduced a zoom-out effect animation during card flipping.

## [1.2.1] 🛠️

### Hot Fixes
- Resolved asset path warnings.

## [1.2.0] 🚀

### Features

- ✨ Added the ability to show balances and flipping animations on cards.
- Introduced new parameters:
  - `showBalance`
  - `balance`
  - `cvvNumber`
  - `enableFlipping`
  - `autoHideBalance`
  - `disableHapticFeedback`

## [1.1.0] 🚀

### Features

- ✨ Added `showValidFrom` and `showValidThru` parameters to control visibility of validity dates.
- Removed `disableShowingCardLogo`. Use `creditCardType: CreditCardType.none` instead to achieve the same effect.

## [1.0.7] 🔄

### Features

- 🚀 Deprecated `disableShowingCardLogo` property.
- ✨ Added `creditCardType` parameter to override the logo. Set `creditCardType: CreditCardType.none` to disable the card logo.

## [1.0.6] 🛠️

### Features

- ✨ Introduced `disableShowingCardLogo` property to hide the card logo.

## [1.0.5] 📝

### Improvements

- 📖 Enhanced the README documentation.

## [1.0.4] 🔧

### Fixes

- 🐛 Fixed a bug with card numbers containing spaces.

## [1.0.3] ⚙️

### Fixes

- 🐛 Made the card number length flexible.
- 🚀 Optimized the grouping algorithm for improved performance and accuracy.

## [1.0.2] 🖼️

### Additions

- 📸 Added a background image feature for cards.
- 🏦 Introduced the ability to specify the card company logo.
- 🆔 Enabled specification of the type of card.

## [1.0.1] 📝

### Additions

- 📖 Updated package metadata.

## [1.0.0+5] 🎉

### Additions

- 📚 Enhanced documentation.

## [1.0.0+4] 🚀

### Additions

- 📚 Updated documentation.
- 🎉 Added the `placeNfcIconAtTheEnd` property to position the NFC icon at the opposite side of the Chip.
- 💄 Correctly positioned the Chip on the card.

## [1.0.0+3] 🎊

### Additions

- 📸 Included an image in the `README.md` file.

## [1.0.0+2] 📝

### Additions

- 📚 Updated documentation.

## [1.0.0+1] 🚀

### Additions

- 🎉 Initial public release.
