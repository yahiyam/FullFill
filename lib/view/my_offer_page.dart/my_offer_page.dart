import 'package:flutter/material.dart';
import 'package:fullfill_user_app/utils/empty_page_message.dart';
import 'package:fullfill_user_app/utils/functions/simple_app_bar.dart';

class MyOfferPage extends StatelessWidget {
  const MyOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildSimpleAppBar(context, title: 'My offers'),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: EmptyPageMessage(
              mainTitle: 'ohh snap! No offers yet',
              subTitle: 'please check again later.',
            ),
          ),
          SizedBox(),
        ],
      ),
    );
  }
}
