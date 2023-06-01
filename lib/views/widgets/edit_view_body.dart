import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 14.0,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 18.0,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 26.0,
          ),
          CustomTextField(
            hint: 'Content',
            maxLines: 6,
          )
        ],
      ),
    );
  }
}
