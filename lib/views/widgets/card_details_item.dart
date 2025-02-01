import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils/app_images.dart';
import 'package:responsive_adaptive/utils/app_style.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage(Assets.imagesCardShapePn)),
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(left: 31, right: 42, top: 16),
              title: Text('Name card',
                  style: AppStyle.regualr16(context).copyWith(
                    color: Colors.white,
                  )),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyle.medium16(context),
              ),
              trailing: const Icon(Icons.image,color: Colors.black,)
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 48 - 24),
              child: FittedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '0918 8124 0042 8129',
                      style: AppStyle.semiBold24(context).copyWith(color: Colors.white),
                    ),
                    Text(
                      '12/20 - 124',
                      style: AppStyle.regualr16(context).copyWith(color: Colors.white),)
                  ],
                ),
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 54 - 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}