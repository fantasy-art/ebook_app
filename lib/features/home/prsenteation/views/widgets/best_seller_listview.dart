import 'package:flutter/material.dart';

import 'best_seller_listview_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context, index) => const BestSellerListViewItem(),
    );
  }
}
