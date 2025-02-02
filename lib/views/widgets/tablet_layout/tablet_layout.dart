import 'package:flutter/material.dart';
import 'package:responsive_adaptive/views/widgets/desktop_adaptive_layout.dart';
import 'package:responsive_adaptive/views/widgets/mobile_layout/mobile_layout.dart';
import 'package:responsive_adaptive/views/widgets/tablet_layout/table_drawer.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout(
      {super.key, required this.changeIndex, required this.activeIndex});
  final void Function(int) changeIndex;
  final int activeIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: TabletDrawer(
              changeIndex: changeIndex,
            )),
        Expanded(
            flex: 10,
            child: const [
              MobileDashBoardView(),
              MyTransaction(),
              MyStatistics(),
              WalletAccount(),
              MyInvestment()
            ][activeIndex])
      ],
    );
  }
}
