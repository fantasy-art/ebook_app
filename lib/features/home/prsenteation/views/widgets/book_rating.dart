import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 20),
        SizedBox(width: 6),
        Text('4.8', style: Styles.textStyle16),
        SizedBox(width: 5),
        Text('(254)', style: Styles.textStyle14),
      ],
    );
  }
}
