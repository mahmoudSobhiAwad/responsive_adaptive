import 'package:flutter/material.dart';
import 'package:responsive_adaptive/views/widgets/income_details.dart';

class IncomeDetailsList extends StatelessWidget {
  const IncomeDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              4,
              (index) => const Padding(
                    padding: EdgeInsets.only(bottom: 12.0),
                    child: IncomDetails(),
                  )),
        ],
      ),
    );
  }
}

