import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/app_style.dart';
import 'package:responsive_adaptive/views/widgets/card_details_item.dart';
import 'package:responsive_adaptive/views/widgets/custom_dot_indicator.dart';
import 'package:responsive_adaptive/views/widgets/transaction_history.dart';

class MyCardBody extends StatefulWidget {
  const MyCardBody({super.key});

  @override
  State<MyCardBody> createState() => _MyCardBodyState();
}

class _MyCardBodyState extends State<MyCardBody> {
  int currIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Card",
            style: AppStyle.semiBold20(context),
          ),
          const SizedBox(
            height: 20,
          ),
          AspectRatio(
            aspectRatio: 400 / 215,
            child: PageView.builder(
                onPageChanged: (index) {
                  currIndex = index;
                  setState(() {});
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: MyCard(),
                  );
                }),
          ),
          const SizedBox(
            height: 20,
          ),
          DotsIndicator(
            currIndex: currIndex,
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 1,
            color: Color(0xffF1F1F1),
          ),
          const TransactionHistory(),
        ],
      ),
    );
  }
}
