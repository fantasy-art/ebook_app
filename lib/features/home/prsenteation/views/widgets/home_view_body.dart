import 'package:ebook_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_listview_item.dart';
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
