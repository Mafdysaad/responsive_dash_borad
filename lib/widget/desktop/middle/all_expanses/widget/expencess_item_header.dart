import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/model/expences_datiles.dart';

class ExpencesItemheader extends StatelessWidget {
  const ExpencesItemheader(
      {super.key,
      required this.Expances,
      this.Imagebackground_color,
      this.Image_color,
      this.Arrow_color});

  final ExpancesDatiles Expances;
  final Color? Imagebackground_color, Image_color, Arrow_color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: ShapeDecoration(
            color: Imagebackground_color ??
                Colors.white.withOpacity(0.10000000149011612),
            shape: const OvalBorder(),
          ),
          child: Center(
              child: SvgPicture.asset(
            Expances.image,
            // color: color == null ? const Color(0x4EB7F2) : Colors.white,
            colorFilter:
                ColorFilter.mode(Image_color ?? Colors.white, BlendMode.srcIn),
          )),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Arrow_color ?? Colors.white,
          ),
        )
      ],
    );
  }
}
