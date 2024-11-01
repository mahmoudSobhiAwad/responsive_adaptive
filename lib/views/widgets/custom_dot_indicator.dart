import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key,required this.currIndex});
  final int currIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              ...List.generate(3, (index) =>Padding(
                padding: const EdgeInsets.only(right: 10),
                child: FittedBox(
                  child: Container(
                    height: 8,
                    width: index==currIndex?32:8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(index==currIndex?12:4),
                      color: index==currIndex?const Color(0xff4EB7F2):const Color(0xffE8E8E8),
                    ),
                   
                  ),
                ),
              )),
            ],
          );
  }
}