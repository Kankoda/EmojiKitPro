# Release Notes

LicenseKit honors semantic versioning to great extent:

* Only remove deprecated code in `major` versions.
* Only deprecate code in `minor` and `patch` versions.
* Avoid breaking changes in `minor` and `patch` versions.
* Code can be marked as deprecated at any time.

Breaking changes *can* still occur in minor versions and patches, if the alternative is to not be able to release important new features or fixes.



## 0.2

This update tweaks a few things in EmojiKit.

### ✨ New Features

* `Emoji.GridConfiguration` can now be created with just a font size.
* `LazyHGrid` and `LazyVGrid` has new EmojiKit-based initializers.

### 💡 Adjustments

* `Image` extensions replace individual assets with a category-based function.

### 🐛 Bug Fixes

* This update fixes a problem that made the SDK not include macOS support
* This update fixes a bundle problem when resolving images and localized strings.



## 0.1

This is the very first beta release of EmojiKit.

### ✨ New Features

* `Emoji` is a struct with Emoji-specific properties and features, and also serves as a namespace for the library.
* `Emoji` supports unicode information, localization, search, categories, skin tones, and emoji version information.
* `Emoji` also has `Grid` and `Picker` UI components.  
