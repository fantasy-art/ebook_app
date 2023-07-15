import 'package:ebook_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'custom_listview_item.dart';

final List bookItem = [
  AssetsData.b1,
  AssetsData.b2,
  AssetsData.b3,
  AssetsData.b4,
  AssetsData.b5,
];

class FeatureListView extends StatelessWidget {
  const FeatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bookItem.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: CustomListViewItem(
            imageName: bookItem[index],
          ),
        ),
      ),
    );
  }
}
