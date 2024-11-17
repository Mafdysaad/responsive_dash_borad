import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/model/item.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';

class ActiveItem extends StatelessWidget {
  final Item item;
  final bool isActive;
  const ActiveItem({super.key, required this.item, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListTile(
              trailing: Container(
                width: 3,
                decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
              ),
              leading: SvgPicture.asset(item.Image),
              title: Text(
                item.Title,
                style: Fontstyle.Montserrat_Bold16(context),
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListTile(
              leading: SvgPicture.asset(item.Image),
              title: Text(
                item.Title,
                style: Fontstyle.Montserrat_regular16(context),
              ),
            ),
          );
  }
}
