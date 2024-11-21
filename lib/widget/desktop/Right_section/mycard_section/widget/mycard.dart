import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            color: const Color(0xFF4EB7F2),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage(Assets.imagesBackground))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(right: 31, left: 45, top: 20),
              title: Text(
                'Name card',
                style: Fontstyle.Montserrat_regular16(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: Fontstyle.Montserrat_medium20(context)
                    .copyWith(color: Colors.white),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: Fontstyle.Montserrat_SemiBold24(context)
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    '12/20 - 124',
                    style: Fontstyle.Montserrat_regular16(context)
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 36,
              ),
            )
          ],
        ),
      ),
    );
  }
}
