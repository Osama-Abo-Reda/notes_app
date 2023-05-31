import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 120.0,
      padding: const EdgeInsets.only(
        top: 24.0,
        bottom: 24.0,
        left: 12.0,
      ),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(
          16.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Title Note',
              maxLines: 1,
              style: TextStyle(
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
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
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
              'May 21, 2023',
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
    );
  }
}
