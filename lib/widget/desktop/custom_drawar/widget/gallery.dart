import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class Gallery extends StatelessWidget {
  const Gallery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 47, left: 40, bottom: 9),
      child: Container(
        color: const Color(0xFFC4C4C4),
        width: double.infinity,
        height: 53,
        child: SvgPicture.asset(
          alignment: Alignment.center,
          Assets.imagesGallery,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
