import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Row(
          children: [
            Image.asset(AssetsData.b1, height: 100),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text('Lost Legends  ',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20),
                ),
                const SizedBox(height: 3),
                const Text('Alix Hirsch', style: Styles.textStyle14),
                const SizedBox(height: 3),
                const Row(
                  children: [
                    Text('19.99 \$', style: Styles.textStyle18),
                    SizedBox(width: 50),
                    Icon(Icons.star, color: Colors.yellow),
                    Text('4.8', style: Styles.textStyle16),
                    Text(' (2390)', style: Styles.textStyle14),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
