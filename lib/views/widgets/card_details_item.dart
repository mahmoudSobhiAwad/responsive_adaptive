import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive/utils/app_images.dart';
import 'package:responsive_adaptive/utils/app_style.dart';

class CardDetailsItem extends StatelessWidget {
  const CardDetailsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: (420/215),
      child: Stack(
        children: [
          SizedBox(child: SvgPicture.asset(Assets.imagesCardShape,alignment: Alignment.topCenter,)),
          Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: const EdgeInsets.all(24.0), // Adjust padding as needed
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name card",
                style: AppStyle.regualr16.copyWith(color: Colors.white),
              ),
              Text(
                "Syah Bandi",
                style: AppStyle.medium20.copyWith(color: Colors.white),
              ),
            ],
          ),
          const Icon(Icons.image,color:  Color(0xff292D32),)
        ],
      ),
    ),
          ),
          Align(
    alignment: Alignment.bottomRight,
    child: Padding(
      padding: const EdgeInsets.all(24.0), // Adjust padding as needed
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "0918 8124 0042 8129",
            style: AppStyle.semiBold24.copyWith(color: Colors.white),
          ),
          Text(
            "12/20 - 124",
            style: AppStyle.regualr16.copyWith(color: Colors.white),
          ),
        ],
      ),
    ),
    ),
        ],
      ));
  }
}