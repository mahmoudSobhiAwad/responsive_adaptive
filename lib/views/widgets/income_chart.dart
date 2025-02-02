import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomChart extends StatefulWidget {
  const IncomChart({super.key, this.showTitle});
  final bool? showTitle;
  @override
  State<IncomChart> createState() => _IncomChartState();
}

class _IncomChartState extends State<IncomChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1.7,
        child: PieChart(PieChartData(
            pieTouchData: PieTouchData(
                enabled: true,
                touchCallback: (event, response) {
                  activeIndex =
                      response?.touchedSection?.touchedSectionIndex ?? -1;
                  setState(() {});
                }),
            sectionsSpace: 0,
            sections: [
              PieChartSectionData(
                radius: activeIndex == 0 ? 60 : 50,
                showTitle: widget.showTitle ?? false,
                value: 40,
                color: const Color(0xff208CC8),
              ),
              PieChartSectionData(
                radius: activeIndex == 1 ? 60 : 50,
                showTitle: false,
                value: 25,
                color: const Color(0xff4EB7F2),
              ),
              PieChartSectionData(
                radius: activeIndex == 2 ? 60 : 50,
                value: 20,
                showTitle: false,
                color: const Color(0xff064061),
              ),
              PieChartSectionData(
                radius: activeIndex == 3 ? 60 : 50,
                value: 22,
                showTitle: false,
                color: const Color(0xffE2DECD),
              ),
            ])),
      ),
    );
  }
}
