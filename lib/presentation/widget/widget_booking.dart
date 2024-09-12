import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class WidgetBooking extends StatefulWidget {
  String day;
  String date;
  int index;
  int selectedIndex;
  Function(int) onClick;

  WidgetBooking({
    super.key,
    required this.day,
    required this.date,
    required this.index,
    required this.selectedIndex,
    required this.onClick,
  });

  @override
  State<WidgetBooking> createState() => _WidgetBookingState();
}

class _WidgetBookingState extends State<WidgetBooking> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Panggil fungsi onClick dari parent untuk update selectedIndex
        widget.onClick(widget.index);
      },
      child: Container(
        height: 100,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 24,
              ),
              child: Column(
                children: [
                  Text(
                    widget.day,
                    style: GoogleFonts.poppins(
                      color: const Color(0xFF000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    widget.date,
                    style: GoogleFonts.poppins(
                      color: const Color(0xFFA8ACB6),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            // Jika item dipilih, tampilkan ikon check
            widget.selectedIndex == widget.index
                ? Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 6,
                        left: 4,
                        right: 7,
                        bottom: 3,
                      ),
                      width: 27,
                      height: 25,
                      decoration: const BoxDecoration(
                        color: Color(0xFF3F6DF6),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(22),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Image.asset(
                        "assets/icons/fi_check.png",
                        width: 16,
                        height: 16,
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
