import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'feature_similer_listview.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You Can Also Like:',
          style: Styles.textStyle14
              .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
        ),
        const SizedBox(height: 12),
        const FeatureSimilerListView(),
      ],
    );
  }
}
