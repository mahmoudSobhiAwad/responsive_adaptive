import 'package:flutter/material.dart';
import 'package:responsive_adaptive/views/widgets/all_expensive_body.dart';
import 'package:responsive_adaptive/views/widgets/quick_invoice.dart';

class AllExpenseView extends StatelessWidget {
  const AllExpenseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         const AllExpensiveBody(),
        const SizedBox(height: 20,),
        Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)
            ),
            child: const QuickInvoice(),
          ),
          
      ],
    );
  }
}


