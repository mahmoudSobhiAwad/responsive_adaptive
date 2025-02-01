import 'package:flutter/material.dart';
import 'package:responsive_adaptive/views/widgets/all_expense_view.dart';

class SecondWidget extends StatelessWidget {
  const SecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
          flex: 3,
          child:Padding(
            padding: EdgeInsets.all(20.0),
            child: SingleChildScrollView(child: AllExpenseView()),
          ),
        );
  }
}