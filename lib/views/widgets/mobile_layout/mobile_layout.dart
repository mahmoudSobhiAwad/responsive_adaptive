import 'package:flutter/material.dart';
import 'package:responsive_adaptive/views/widgets/all_expense_view.dart';
import 'package:responsive_adaptive/views/widgets/card_widget.dart';
import 'package:responsive_adaptive/views/widgets/income_widget.dart';

class MobileLayoutBuilder extends StatelessWidget {
  const MobileLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
            padding: EdgeInsets.all(24),
            child: Column(
            children: [
              AllExpenseView(),
              SizedBox(height: 20,),
              MyCardBody(),
              SizedBox(height: 20,),
              IncomeWidget(),
            ],
          )
          );
  }
}