import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/features/search/view/widget/custom_search_text_field.dart';
import 'package:bookly_app/features/search/view/widget/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSearchTextField(),
        const SizedBox(
          height: 16,
        ),
        Text(
          'Search result',
          style: Styles.font18SemiBold,
        ),
        const SizedBox(
          height: 16,
        ),
        const Expanded(child: SearchResultListView()),
      ],
    );
  }
}
