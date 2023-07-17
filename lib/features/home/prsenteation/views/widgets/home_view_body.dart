import 'package:ebook_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_listview.dart';
import 'custom_app_bar.dart';
import 'feature_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeatureListView(),
              SizedBox(height: 10),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: Text('Best Seller', style: Styles.textStyle30)),
            ],
          ),
        ),
        SliverFillRemaining(child: BestSellerListView()),
      ],
    );
  }
}
