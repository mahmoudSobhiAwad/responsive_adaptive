import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/app_style.dart';
import 'package:responsive_adaptive/views/widgets/all_expense_view.dart';
import 'package:responsive_adaptive/views/widgets/card_widget.dart';
import 'package:responsive_adaptive/views/widgets/first_widget.dart';
import 'package:responsive_adaptive/views/widgets/income_widget.dart';

class DesktopAdaptiveLayout extends StatelessWidget {
  const DesktopAdaptiveLayout(
      {super.key, required this.activeIndex, required this.changeIndex});
  final int activeIndex;
  final void Function(int) changeIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: FirstWidget(
          changeIndex: changeIndex,
        )),
        Expanded(
          flex: 5,
          child: const [
            DashBoardDesktop(),
            MyTransaction(),
            MyStatistics(),
            WalletAccount(),
            MyInvestment()
          ][activeIndex],
        ),
      ],
    );
  }
}

class MyTransaction extends StatelessWidget {
  const MyTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "My Transaction",
        style: AppStyle.semiBold24(context),
      ),
    );
  }
}

class MyStatistics extends StatelessWidget {
  const MyStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "My Statistics",
        style: AppStyle.semiBold24(context),
      ),
    );
  }
}

class WalletAccount extends StatelessWidget {
  const WalletAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "My WalletAccount",
        style: AppStyle.semiBold24(context),
      ),
    );
  }
}

class MyInvestment extends StatelessWidget {
  const MyInvestment({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "My Investment",
        style: AppStyle.semiBold24(context),
      ),
    );
  }
}

class DashBoardDesktop extends StatelessWidget {
  const DashBoardDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: AllExpenseView(),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      MyCardBody(),
                      SizedBox(
                        height: 24,
                      ),
                      Expanded(
                        child:
                            AspectRatio(aspectRatio: 1, child: IncomeWidget()),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
