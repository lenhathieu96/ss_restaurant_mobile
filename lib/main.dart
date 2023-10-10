import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:responsive_framework/responsive_scaled_box.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:ss_restaurant/utils/screen_utils.dart';

import 'routes/app_route.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: RootApp()));
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    ScreenUtil.setInitialValues(
        size.width, size.height, MediaQuery.of(context).devicePixelRatio);

    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.config(),
        routerConfig: router,
        builder: (context, child) {
          return ResponsiveBreakpoints.builder(
              breakpoints: [
                const Breakpoint(start: 0, end: 450, name: MOBILE),
                const Breakpoint(start: 451, end: 800, name: TABLET),
                const Breakpoint(start: 801, end: 1920, name: DESKTOP),
                const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
              ],
              child: Builder(builder: (responsiveContext) {
                return ResponsiveScaledBox(
                    width: ResponsiveValue<double>(responsiveContext,
                        conditionalValues: [
                          Condition.equals(name: MOBILE, value: 450),
                          Condition.between(start: 800, end: 1100, value: 800),
                          Condition.between(
                              start: 1000, end: 1200, value: 1000),
                          // There are no conditions for width over 1200
                          // because the `maxWidth` is set to 1200 via the MaxWidthBox.
                        ]).value,
                    child: child!);
              }));
        });
  }
}
