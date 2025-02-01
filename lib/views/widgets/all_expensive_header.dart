import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/app_style.dart';

class AllExpensiveHeader extends StatelessWidget {
  const AllExpensiveHeader({
    super.key,
    this.customTextHeader,
  });
  final String? customTextHeader;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          customTextHeader ?? "All Expense",
          style: AppStyle.semiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffF1F1F1),
              ),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Text(
                "Monthly",
                style: AppStyle.medium16(context),
              ),
              const Icon(Icons.keyboard_arrow_down_outlined)
            ],
          ),
        )
      ],
    );
  }
}
