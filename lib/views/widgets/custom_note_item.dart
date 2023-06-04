import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const EditNoteView(),
        ),
      ),
      child: Container(
        //height: 120.0,
        padding: const EdgeInsets.only(
          top: 24.0,
          bottom: 24.0,
          left: 12.0,
        ),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(
            16.0,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                maxLines: 1,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.8,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  bottom: 16.0,
                ),
                child: Text(
                  note.subTitle,
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.black.withOpacity(
                      0.5,
                    ),
                    fontSize: 18.0,
                    letterSpacing: 0.5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 28.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 24.0,
              ),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Colors.black.withOpacity(
                    0.5,
                  ),
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
