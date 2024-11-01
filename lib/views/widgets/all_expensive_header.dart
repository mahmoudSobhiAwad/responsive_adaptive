import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/app_style.dart';

class AllExpensiveHeader extends StatelessWidget {
  const AllExpensiveHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("All Expense",style: AppStyle.semiBold20,),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffF1F1F1),),
            borderRadius: BorderRadius.circular(12)
          ),
          child: const Row(
            children: [
              Text("Monthly",style: AppStyle.meduim16,),
              IconButton(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.zero,
                onPressed: null, icon: RotatedBox(
                quarterTurns: -1,
                child: Icon(Icons.arrow_back_ios,color: Color(0xff064061),)))
            ],
          ),
        )
      ],
    );
  }
}