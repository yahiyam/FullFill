
import 'package:flutter/material.dart';
import 'package:fullfill_user_app/globals/colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        SizedBox(
          width: screen.width * .4,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.place_outlined,
                color: commonColor,
              ),
              Text(
                'Location',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Icon(
                Icons.expand_more_rounded,
                color: commonColor,
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/delivery');
          },
          icon: const Icon(Icons.shopping_cart_outlined),
        ),
      ],
    );
  }
}