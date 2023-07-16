import 'package:ebook_app/core/utils/assets.dart';
import 'package:ebook_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'feature_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureListView(),
          SizedBox(height: 30),
          Padding(
              padding: EdgeInsets.all(24),
              child: Text('Best Seller', style: Styles.textStyle30)),
          //BestSellerListViewItem(),
          SellerListView(),
        ],
      ),
    );
  }
}

class SellerListView extends StatelessWidget {
  const SellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, index) => const BestSellerListViewItem(),
      ),
    );
  }
}

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
                  child: const Text(
                      'Lost Legends Lost Legends Lost Legends Lost Legends Lost Legends Lost Legends ',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20),
                ),
                const Text(
                  'Alix Hirsch',
                  style: Styles.textStyle14,
                ),
                const Row(
                  children: [
                    Text(
                      '19.99 \$',
                      style: Styles.textStyle18,
                    ),
                    SizedBox(width: 50),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      '4.8',
                      style: Styles.textStyle16,
                    ),
                    Text(
                      ' (2390)',
                      style: Styles.textStyle14,
                    ),
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
