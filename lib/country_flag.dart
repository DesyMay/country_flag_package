import 'package:country_flag_package/flag_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return SvgPicture.asset(src, fit: fit, alignment: alignment, width: width, height: height,);
  }
}

const prefix = 'packages/country_flag_package/';
