import 'package:flutter/material.dart';
import 'package:responsive_adaptive/views/widgets/all_expense_view.dart';
import 'package:responsive_adaptive/views/widgets/card_widget.dart';
import 'package:responsive_adaptive/views/widgets/desktop_adaptive_layout.dart';
import 'package:responsive_adaptive/views/widgets/income_widget.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, required this.activeIndex});
  final int activeIndex;
  @override
  Widget build(BuildContext context) {
    return const [
      MobileDashBoardView(),
      MyTransaction(),
      MyStatistics(),
      WalletAccount(),
      MyInvestment(),
    ][activeIndex];
  }
}

class MobileDashBoardView extends StatelessWidget {
  const MobileDashBoardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            AllExpenseView(),
            SizedBox(
              height: 20,
            ),
            MyCardBody(),
            SizedBox(
              height: 20,
            ),
            IncomeWidget(),
          ],
        ));
  }
}
