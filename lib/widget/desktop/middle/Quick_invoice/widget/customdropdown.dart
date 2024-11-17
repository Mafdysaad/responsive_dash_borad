import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';
import 'package:responsive_dashboard/widget/desktop/middle/Quick_invoice/widget/customtextefiled.dart';

class Customdropdown extends StatelessWidget {
  const Customdropdown({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '',
          style: Fontstyle.Montserrat_medium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        DropdownMenu(
          expandedInsets: EdgeInsets.zero,
          trailingIcon: Transform.rotate(
              angle: -1.5708,
              child: const Icon(Icons.arrow_back_ios_new_outlined)),
          hintText: hint,
          dropdownMenuEntries: [
            const DropdownMenuEntry(value: r'$100', label: r'$100'),
            const DropdownMenuEntry(value: r'$1200', label: r'$1200'),
            const DropdownMenuEntry(value: r'$1400', label: r'$1300'),
          ],
          inputDecorationTheme: InputDecorationTheme(
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
