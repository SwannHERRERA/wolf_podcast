import 'package:flutter/material.dart';
import 'package:wolf_podcast_app/constants.dart';

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: kBackgroundColor,
    primaryColor: kPrimaryColor,
    accentColor: kAccentColor
  );
}