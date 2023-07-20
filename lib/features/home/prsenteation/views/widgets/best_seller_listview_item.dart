import 'package:ebook_app/core/utils/app_router.dart';
import 'package:ebook_app/features/home/data/models/book_models/book_models.dart';
import 'package:ebook_app/features/home/prsenteation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModels});
  final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kBookDetailsView);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 10),
          child: Row(children: [
            SizedBox(
              height: 100,
              child: CustomBookImage(
                  imageUrl: bookModels.volumeInfo.imageLinks.thumbnail),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(bookModels.volumeInfo.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle24),
                  ),
                  const SizedBox(height: 3),
                  Text(bookModels.volumeInfo.authors![0],
                      style: Styles.textStyle14),
                  const SizedBox(height: 3),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Free', style: Styles.textStyle18),
                      BookRating(raitng: 4, count: 308),
                    ],
                  )
                ],
              ),
            ),
          ]),
        ));
  }
}
