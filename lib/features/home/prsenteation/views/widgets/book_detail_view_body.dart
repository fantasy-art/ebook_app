import 'package:flutter/material.dart';

import 'book_detail_section.dart';
import 'similer_books_section.dart';

class BookDetailViewBody extends StatelessWidget {
  const BookDetailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                BookDetailSection(),
                Expanded(child: SizedBox(height: 37)),
                SimilerBooksSection(),
              ],
            ),
          )),
    ]);
  }
}
