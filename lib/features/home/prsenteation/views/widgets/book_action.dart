import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BoxAction extends StatelessWidget {
  const BoxAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
                text: '19.99\$',
                textColor: Colors.black,
                bgColor: Colors.white,
                border: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16))),
          ),
          Expanded(
            child: CustomButton(
                text: 'Free Preview',
                textColor: Colors.white,
                bgColor: Colors.green,
                border: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16))),
          ),
        ],
      ),
    );
  }
}
