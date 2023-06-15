import 'package:flutter/material.dart';
import 'package:fullfill_user_app/presentation/widgets/common_widgets.dart';
import 'package:fullfill_user_app/presentation/profile_page/profile_page.dart';

import '../../globals/colors.dart';
import '../home_page/widgets/heading_title.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(title: 'Checkout'),
      backgroundColor: grey200,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text(
              'Payment',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w400,
                height: 1.2025,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeadingTitle(
                  title: 'Payment Method',
                  padding: false,
                ),
                const SizedBox(height: 12),
                Container(
                  height: screen.height / 6,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: white70,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      PaymentTypeCard(
                        type: 'Card',
                        icon: Icons.payment,
                        isSelected: true,
                        iconBGcolor: commonColor,
                      ),
                      PaymentTypeCard(
                        type: 'UPI',
                        icon: Icons.account_balance_rounded,
                        iconBGcolor: pink,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Total',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  height: 1.2025,
                ),
              ),
              Text(
                '1,300',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  height: 1.2025,
                ),
              ),
            ],
          ),
          const CommonButton(title: 'Proceed to payment'),
        ],
      ),
    );
  }
}