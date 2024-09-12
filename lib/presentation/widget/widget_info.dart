// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:slicingday7/presentation/theme/theme_v1.dart';

// ignore: must_be_immutable
class WidgetInfo extends StatelessWidget {
  String subTotal;
  String pricing;
  WidgetInfo({
    super.key,
    required this.subTotal,
    required this.pricing,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          subTotal,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            color: blackColor,
            fontSize: 16,
          ),
        ),
        Text(
          pricing,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: blackColor,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
