import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 14.0,
          ),
          CustomAppBar(
            onPressed: () {},
            title: 'Notes',
            icon: Icons.search,
          ),
          const SizedBox(
            height: 18.0,
          ),
          const Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
