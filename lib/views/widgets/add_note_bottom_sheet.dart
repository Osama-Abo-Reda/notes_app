import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32.0,
            ),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 24.0,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 6,
            ),
            SizedBox(
              height: 38.0,
            ),
            CustomButton(),
            SizedBox(
              height: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
