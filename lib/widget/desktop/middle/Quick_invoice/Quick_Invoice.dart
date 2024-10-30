import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_background.dart';
import 'package:responsive_dashboard/widget/desktop/middle/Quick_invoice/widget/Quickinvoice_header.dart';
import 'package:responsive_dashboard/widget/desktop/middle/Quick_invoice/widget/custom_button.dart';
import 'package:responsive_dashboard/widget/desktop/middle/Quick_invoice/widget/customdropdown.dart';
import 'package:responsive_dashboard/widget/desktop/middle/Quick_invoice/widget/customtextefiled.dart';
import 'package:responsive_dashboard/widget/desktop/middle/Quick_invoice/widget/latestTransaction.dart';

class Quickinvoice extends StatelessWidget {
  const Quickinvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Custom_background(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Quickinvoice_header(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(
            height: 48,
          ),
          Column(
            children: [
              Display_form(
                first_title: 'Type customer name',
                first_hint: 'Customer name',
                scond_title: 'Customer Email',
                second_hint: 'Type customer email',
                with_dropdownmnue: false,
              ),
              SizedBox(
                height: 24,
              ),
              Display_form(
                first_title: 'Item name',
                first_hint: 'Type customer name',
                scond_title: 'Item mount',
                second_hint: ' USD',
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                        title: 'Add more details',
                        text_color: Color(0xFF4EB7F2),
                        background_color: Colors.white),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: CustomButton(
                        title: 'Send Money',
                        text_color: Colors.white,
                        background_color: Color(0xFF4EB7F2)),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class Display_form extends StatelessWidget {
  const Display_form({
    this.with_dropdownmnue,
    super.key,
    required this.first_title,
    required this.second_hint,
    required this.scond_title,
    required this.first_hint,
  });
  final String first_title, scond_title, first_hint, second_hint;

  final bool? with_dropdownmnue;
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
