import 'package:flutter/material.dart';
import 'package:responsive_adaptive/views/widgets/income_chart.dart';
import 'package:responsive_adaptive/views/widgets/income_details_list.dart';

class IncomSectionBody extends StatelessWidget {
  const IncomSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IncomChart(),
        IncomeDetailsList(),
      ],
    );
  }
}

