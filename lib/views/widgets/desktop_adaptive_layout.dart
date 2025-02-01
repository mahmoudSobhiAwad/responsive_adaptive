import 'package:flutter/material.dart';
import 'package:responsive_adaptive/views/widgets/all_expense_view.dart';
import 'package:responsive_adaptive/views/widgets/card_widget.dart';
import 'package:responsive_adaptive/views/widgets/first_widget.dart';
import 'package:responsive_adaptive/views/widgets/income_widget.dart';

class DesktopAdaptiveLayout extends StatelessWidget {
  const DesktopAdaptiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
      Expanded(child: FirstWidget()),
      Expanded(
        flex: 5,
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child:Padding(
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
                        SizedBox(height: 24,),
                        Expanded(child: IncomeWidget()),
                      ],
                    ),
                  ),
                  ),
              ],
            ),
            ),
            
          ],
        ),
      ),
      ],
    );
  }
}

