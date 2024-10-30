import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/model/user_info.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.userinfo,
  });
  final UserInfo_model userinfo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Container(
        decoration: const BoxDecoration(
            color: Color(0xFFFAFAFA),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: ListTile(
          leading: SvgPicture.asset(userinfo.Image),
          title: Text(
            userinfo.tilte,
            style: Fontstyle.Montserrat_semiBold16,
          ),
          subtitle: Text(
            userinfo.subtitle,
            style: Fontstyle.Montserrat_regular12,
          ),
        ),
      ),
    );
  }
}
