import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicingday7/presentation/widget/widget_booking.dart';

class RandomV2 extends StatefulWidget {
  const RandomV2({super.key});

  @override
  State<RandomV2> createState() => _RandomV2State();
}

class _RandomV2State extends State<RandomV2> {
  int selectedIndex = -1; // index yang dipilih

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFBFF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/cover.png",
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Arrina La",
                style: GoogleFonts.poppins(
                  color: const Color(0xFF000000),
                  fontSize: 26,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                "Bali, Dekat Bandung",
                style: GoogleFonts.poppins(
                  color: const Color(0xFF2F323A),
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 26,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF000000),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "Pantai Pandawa adalah salah satu para\nkawasan wisata di area Kuta selatan sana\nKabupaten Dekat Bandung, Bali.",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF2F323A),
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  "Booking Now",
                  style: GoogleFonts.poppins(
                    color: const Color(0xFF000000),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      WidgetBooking(
                        selectedIndex: selectedIndex,
                        index: 0,
                        day: "THU",
                        date: "19 JAN",
                        onClick: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      WidgetBooking(
                        index: 1,
                        selectedIndex: selectedIndex,
                        day: "FRI",
                        date: "20 JAN",
                        onClick: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 100,
                        width: 80,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4F4F6),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 24,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "SAT",
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFFBABAC8),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                "21 JAN",
                                style: GoogleFonts.poppins(
                                  color: const Color(0xFFBABAC8),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      WidgetBooking(
                        index: 2,
                        selectedIndex: selectedIndex,
                        day: "SUN",
                        date: "22 JAN",
                        onClick: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$22,800",
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF3F6DF6),
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "/night",
                          style: GoogleFonts.poppins(
                            color: const Color(0xFF2F323A),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 31,
                    ),
                    Container(
                      width: 220,
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3F6DF6),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Center(
                        child: Text(
                          "Continue",
                          style: GoogleFonts.poppins(
                            color: const Color(0xFFFAFAFA),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
