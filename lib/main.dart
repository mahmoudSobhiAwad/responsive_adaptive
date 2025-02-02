import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive/views/dash_board_view.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return const FirstAPP();
      }));
}

class FirstAPP extends StatelessWidget {
  const FirstAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:
          '/${RoutesNames.dashboard}', 
      routes: {
        '/${RoutesNames.dashboard}': (context) => const BasicView(
              index: 0,
            ),
        '/${RoutesNames.transaction}': (context) => const BasicView(index: 1),
        '/${RoutesNames.statistics}': (context) => const BasicView(index: 2),
        '/${RoutesNames.wallet}': (context) => const BasicView(index: 3),
        '/${RoutesNames.investment}': (context) => const BasicView(index: 4),
      },
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
    );
  }
}

class RoutesNames {
  static String dashboard = 'dashboard';
  static String transaction = 'transaction';
  static String statistics = 'statistics';
  static String wallet = 'wallet';
  static String investment = 'investment';
}
