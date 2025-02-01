import 'package:flutter/material.dart';
import 'package:responsive_adaptive/views/widgets/mobile_layout/mobile_layout.dart';
import 'package:responsive_adaptive/views/widgets/tablet_layout/table_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: TabletDrawer()),
        Expanded(flex: 10, child: MobileLayoutBuilder())
      ],
    );
  }
}


