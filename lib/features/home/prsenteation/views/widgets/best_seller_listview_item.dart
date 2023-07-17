import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
        child: Row(
          children: [
            Image.asset(AssetsData.b1, height: 100),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: const Text('Lost Legends  ',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle24),
                  ),
                  const SizedBox(height: 3),
                  const Text('Alix Hirsch', style: Styles.textStyle14),
                  const SizedBox(height: 3),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('19.99 \$', style: Styles.textStyle18),
                      BookRating(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
