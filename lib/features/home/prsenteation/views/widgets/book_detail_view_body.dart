import 'package:flutter/material.dart';

import 'package:ebook_app/features/home/prsenteation/views/widgets/feature_similer_listview.dart';
import 'package:ebook_app/features/home/prsenteation/views/widgets/book_rating.dart';
import 'package:ebook_app/core/utils/styles.dart';
import 'package:ebook_app/core/utils/assets.dart';
import 'book_action.dart';
import 'custom_book_details_appbar.dart';
import 'custom_book_image.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.2),
            child: const CustomBookImage(imageName: AssetsData.b1),
          ),
          const SizedBox(height: 43),
          Text('Lost Legends',
              style: Styles.textStyle24.copyWith(fontSize: 35)),
          const SizedBox(height: 6),
          Opacity(
              opacity: 0.7,
              child: Text('4 All-New Adventure',
                  style: Styles.textStyle16
                      .copyWith(fontStyle: FontStyle.italic))),
          const SizedBox(height: 16),
          const BookRating(),
          const SizedBox(height: 37),
          const BoxAction(),
          const SizedBox(height: 37),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You Can Also Like:',
              style: Styles.textStyle14
                  .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ),
          const SizedBox(height: 12),
          const FeatureSimilerListView(),
        ],
      ),
    );
  }
}
