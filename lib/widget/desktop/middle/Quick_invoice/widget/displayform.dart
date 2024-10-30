import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/desktop/middle/Quick_invoice/widget/customdropdown.dart';
import 'package:responsive_dashboard/widget/desktop/middle/Quick_invoice/widget/customtextefiled.dart';

class Display_form extends StatelessWidget {
  Display_form({
    this.with_dropdownmnue,
    super.key,
    required this.first_title,
    required this.second_hint,
    required this.scond_title,
    required this.first_hint,
  });
  final String first_title, scond_title, first_hint, second_hint;

  bool? with_dropdownmnue = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Customtextefiled(
            title: first_title,
            hint: first_hint,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        with_dropdownmnue == false
            ? Expanded(
                child: Customtextefiled(
                  title: scond_title,
                  hint: second_hint,
                ),
              )
            : Expanded(
                child: Customdropdown(
                  hint: second_hint,
                ),
              )
      ],
    );
  }
}
