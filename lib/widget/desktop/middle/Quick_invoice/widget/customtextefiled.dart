import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';

class Customtextefiled extends StatelessWidget {
  const Customtextefiled({super.key, required this.hint, required this.title});
  final String hint;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Fontstyle.Montserrat_medium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: Fontstyle.Montserrat_regular16(context).copyWith(
                color: const Color(0xFFAAAAAA),
              ),
              fillColor: const Color(0xFFFAFAFA),
              filled: true,
              border: buildBorder(),
              enabledBorder: buildBorder(),
              disabledBorder: buildBorder(),
              focusedBorder: buildBorder()),
        ),
      ],
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(
      color: Color(0xFFFAFAFA),
    ),
  );
}
