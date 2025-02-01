import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/app_style.dart';
import 'package:responsive_adaptive/views/widgets/all_expensive_header.dart';
import 'package:responsive_adaptive/views/widgets/income_chart.dart';

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

class IncomDetails extends StatelessWidget {
  const IncomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        leading: const CircleAvatar(
          radius: 6,
          backgroundColor: Colors.black,
        ),
        title: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "Design service",
              style: AppStyle.medium16(context),
            )),
        trailing: Text(
          "40%",
          style: AppStyle.medium16(context),
        ),
      ),
    );
  }
}
