import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicingday7/presentation/theme/theme_v1.dart';
import 'package:slicingday7/presentation/widget/widget_cart.dart';
import 'package:slicingday7/presentation/widget/widget_info.dart';

class RandomV1 extends StatelessWidget {
  const RandomV1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorV1,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16,
              left: 24,
              right: 24,
            ),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "My Shopping Cart",
                    style: GoogleFonts.poppins(
                      color: blackColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                WidgetCart(
                  imageUrl: "assets/images/photo1.png",
                  title: "Burger Malleta",
                  description: "McTheone",
                  price: "\$90.00",
                  amount: "2",
                ),
                const SizedBox(
                  height: 26,
                ),
                WidgetCart(
                  imageUrl: "assets/images/photo2.png",
                  title: "Mojito Orange",
                  description: "The Bar",
                  price: "\$510.00",
                  amount: "5",
                ),
                const SizedBox(
                  height: 26,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  width: 315,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Informations",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: blackColor,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      WidgetInfo(
                        subTotal: "Sub Total",
                        pricing: "\$600.00",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      WidgetInfo(
                        subTotal: "Delivery",
                        pricing: "\$80.00",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: blackColor,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "\$680.00",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: blackColor,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  width: 327,
                  height: 65,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(255, 197, 50, 0.40),
                          blurRadius: 18,
                          offset: Offset(0, 6))
                    ],
                    color: buttonActiveColor,
                    borderRadius: BorderRadius.circular(53),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Checkout Now",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: 327,
                  height: 65,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(53),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Save to Wishlist",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
