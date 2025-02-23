# Country Flag Package

A simple Flutter package that allows you to display country flags by providing a country code.

## Features
- Easily display country flags using a simple widget.
- Supports customizable width, height, alignment, and fit options.
- Uses SVG images for high-quality flag rendering.

## Installation
Add the following dependency to your `pubspec.yaml` file:

```yaml
dependencies:
  country_flag_package: latest_version
```

Then, run:

```sh
flutter pub get
```

## Usage
Import the package:

```dart
import 'package:country_flag_package/flag_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
```

Use the `CountryFlag` widget:

```dart
class CountryFlag extends StatelessWidget {
  const CountryFlag({
    super.key,
    this.countryCode,
    this.height,
    this.width,
    this.alignment = Alignment.center,
    this.fit = BoxFit.contain,
  });

  final String? countryCode;
  final BoxFit fit;
  final Alignment alignment;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final src = prefix + FlagStore().getSvgSrc(countryCode ?? 'Placeholder');
    return SvgPicture.asset(
      src,
      fit: fit,
      alignment: alignment,
      width: width,
      height: height,
    );
  }
}

const prefix = 'packages/country_flag_package/';
```

### Example
```dart
CountryFlag(
  countryCode: 'US',
  width: 50,
  height: 30,
  fit: BoxFit.cover,
  alignment: Alignment.center,
);
```

## Parameters
| Parameter    | Type     | Description |
|-------------|---------|-------------|
| `countryCode` | `String?` | The ISO country code (e.g., 'US', 'IN', 'GB'). |
| `width`      | `double?` | The width of the flag. |
| `height`     | `double?` | The height of the flag. |
| `alignment`  | `Alignment` | The alignment of the flag. Default is `Alignment.center`. |
| `fit`        | `BoxFit` | Determines how the flag is displayed. Default is `BoxFit.contain`. |

## License
This package is licensed under the MIT License. See the `LICENSE` file for more details.

## Contributions
Contributions are welcome! Feel free to open an issue or submit a pull request.

## Contact
For any queries or issues, please open an issue on GitHub or reach out to the maintainer.

---
Happy Coding! 🎉

