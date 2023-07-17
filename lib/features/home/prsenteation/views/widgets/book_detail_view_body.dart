import 'package:flutter/material.dart';

import 'package:ebook_app/core/utils/assets.dart';
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
          )
        ],
      ),
    );
  }
}
