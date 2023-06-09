import 'package:flutter/material.dart';
import 'package:fullfill_user_app/utils/common_button.dart';
import 'package:fullfill_user_app/utils/empty_page_message.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const EmptyPageMessage(
            icon: Icons.event_note_outlined,
            mainTitle: 'No history yet',
            subTitle: 'Hit the orange button down\nbelow to Create an order',
          ),
          CommonButton(
            title: 'Start ordering',
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/home',
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
