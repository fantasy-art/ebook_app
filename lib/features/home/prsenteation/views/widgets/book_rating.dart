import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.raitng, required this.count});
  final int raitng;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F), size: 14),
        const SizedBox(width: 6),
        Text(raitng.toString(), style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text('($count)', style: Styles.textStyle14),
      ],
    );
  }
}
