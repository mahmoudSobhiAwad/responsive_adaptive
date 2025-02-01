import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/app_style.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                child: Text(
              "Transaction History",
              style: AppStyle.semiBold20(context),
            )),
            Flexible(
                child: Text(
              "See all",
              style: AppStyle.medium16(context)
                  .copyWith(color: const Color(0xff4EB7F2)),
              maxLines: 1,
            ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style: AppStyle.medium16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        const SizedBox(
          height: 16,
        ),
        Column(
          children: [
            ...List.generate(3, (index) {
              return Card(
                elevation: 0,
                color: const Color(0xffFAFAFA),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  title: Text(
                    "Cash Withdrawal",
                    style: AppStyle.semiBold16(context),
                  ),
                  subtitle: Text(
                    "13 April 2022",
                    style: AppStyle.medium16(context)
                        .copyWith(color: const Color(0xffAAAAAA)),
                  ),
                  trailing: Text(
                    r"$20,129",
                    style: AppStyle.semiBold20(context)
                        .copyWith(color: const Color(0xffF3735E)),
                  ),
                ),
              );
            })
          ],
        )
      ],
    );
  }
}
