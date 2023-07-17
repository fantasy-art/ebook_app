import 'package:ebook_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

import 'custom_book_image.dart';

final List bookItem = [
  AssetsData.b1,
  AssetsData.b2,
  AssetsData.b3,
  AssetsData.b4,
  AssetsData.b5,
];

class FeatureSimilerListView extends StatelessWidget {
  const FeatureSimilerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bookItem.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: CustomBookImage(
            imageName: bookItem[index],
          ),
        ),
      ),
    );
  }
}
