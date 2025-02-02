import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/app_style.dart';

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
