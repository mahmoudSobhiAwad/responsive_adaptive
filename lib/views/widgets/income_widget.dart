import 'package:flutter/material.dart';
import 'package:responsive_adaptive/views/widgets/all_expensive_header.dart';
import 'package:responsive_adaptive/views/widgets/income_section_body.dart';

class IncomeWidget extends StatelessWidget {
  const IncomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AllExpensiveHeader(
            customTextHeader: "Income",
          ),
          IncomSectionBody()
        ],
      ),
    );
  }
}
