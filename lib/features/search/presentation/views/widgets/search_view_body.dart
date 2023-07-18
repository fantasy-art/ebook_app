import 'package:ebook_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../home/prsenteation/views/widgets/best_seller_listview_item.dart';
import 'custom_search_textfield.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSearchTextField(),
        SizedBox(height: 16),
        Align(
            widthFactor: 2.8,
            alignment: Alignment.centerLeft,
            child: Text('Search Result', style: Styles.textStyle18)),
        SizedBox(height: 16),
        Expanded(child: SearchResultListVeiw()),
      ],
    );
  }
}

class SearchResultListVeiw extends StatelessWidget {
  const SearchResultListVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context, index) => const BookListViewItem(),
    );
  }
}
