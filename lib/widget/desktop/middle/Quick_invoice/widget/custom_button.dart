import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.text_color,
      required this.background_color});
  final String title;
  final Color? text_color, background_color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 0,
              backgroundColor: background_color),
          onPressed: () {},
          child: Text(
            title,
            style: Fontstyle.Montserrat_semiBold18(context)
                .copyWith(color: text_color),
          )),
    );
  }
}
