import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 12),
      child: Container(
        height: 63,
        decoration: const BoxDecoration(
            color: Color(0xFFFAFAFA),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: ListTile(
          leading: SvgPicture.asset(Assets.imagesFace),
          title: Text(
            'Lekan Okeowo',
            style: Fontstyle.Montserrat_semiBold16,
          ),
          subtitle: Text(
            'demo@gmail.com',
            style: Fontstyle.Montserrat_regular12,
          ),
        ),
      ),
    );
  }
}
