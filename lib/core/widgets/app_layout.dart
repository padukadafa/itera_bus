import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:itera_bus/core/values/app_color.dart';

// ignore: non_constant_identifier_names
Widget AppLayout({
  required Widget child,
  Color statusBarColor = AppColor.background,
  Color navbarColor = AppColor.background,
  Brightness brightness = Brightness.dark,
}) {
  return AnnotatedRegion<SystemUiOverlayStyle>(
    value: SystemUiOverlayStyle(
      statusBarColor: statusBarColor,
      systemNavigationBarColor: navbarColor,
      statusBarBrightness: brightness,
      statusBarIconBrightness: brightness,
    ),
    child: SafeArea(child: child),
  );
}
