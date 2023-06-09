import 'package:flutter/material.dart';
import 'package:fullfill_user_app/utils/alert_message.dart';
import 'package:fullfill_user_app/utils/colors.dart';
import 'package:fullfill_user_app/utils/instence.dart';

import 'package:fullfill_user_app/view/myorder_foodpanda/my_order_screen.dart';

import 'package:fullfill_user_app/view/history/history_page.dart';
import 'package:fullfill_user_app/view/my_offers/my_offer_page.dart';
import 'package:fullfill_user_app/view/privacy/privacy_page.dart';
import 'package:fullfill_user_app/view/profile/profile_page.dart';

class UserDrawer extends StatelessWidget {
  const UserDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: commonColor,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              children: [
                CustomDrawerTile(
                  leadingIcon: Icons.account_circle_outlined,
                  title: 'Profile',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ));
                  },
                ),
                const CustomDrawerDivider(),
                CustomDrawerTile(
                  leadingIcon: Icons.shopping_cart_checkout_rounded,
                  title: 'My orders',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MyOrdersScreen(),
                    ));
                  },
                ),
                const CustomDrawerDivider(),
                CustomDrawerTile(
                  leadingIcon: Icons.local_offer_outlined,
                  title: 'offer and promo',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MyOfferPage(),
                    ));
                  },
                ),
                const CustomDrawerDivider(),
                CustomDrawerTile(
                  leadingIcon: Icons.sticky_note_2_outlined,
                  title: 'Privacy policy',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PrivacyPage(),
                    ));
                  },
                ),
                const CustomDrawerDivider(),
                CustomDrawerTile(
                  leadingIcon: Icons.history,
                  title: 'History',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HistoryPage(),
                    ));
                  },
                ),
              ],
            ),
            const SizedBox(),
            CustomDrawerTile(
              leadingIcon: Icons.logout_outlined,
              title: 'Logout',
              onTap: () {
                showAlertMessege(
                  context,
                  message: 'Do you really want to Logout',
                  onOKTap: () {
                    firebaseAuth.signOut().then((value) {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/auth',
                        (route) => false,
                      );
                    });
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDrawerTile extends StatelessWidget {
  const CustomDrawerTile({
    super.key,
    this.title,
    this.leadingIcon,
    this.onTap,
  });
  final String? title;
  final IconData? leadingIcon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      splashColor: commonColor,
      leading: Icon(
        leadingIcon,
        color: white,
      ),
      title: Text(
        title ?? '',
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          height: 1.5,
          color: white,
        ),
      ),
      onTap: onTap,
    );
  }
}

class CustomDrawerDivider extends StatelessWidget {
  const CustomDrawerDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: 56,
      endIndent: 80,
      color: grey300,
    );
  }
}
