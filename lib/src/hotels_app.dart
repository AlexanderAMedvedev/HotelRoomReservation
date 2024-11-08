import 'package:flutter/material.dart';
import 'package:hotels/src/presentation_layer/app_theme.dart';

import 'navigation/router.dart';

class HotelsApp extends StatelessWidget {
  const HotelsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: appTheme,
      routerConfig: router,
      title: 'Go router',
    );
  }
}
