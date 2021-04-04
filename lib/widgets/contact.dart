import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  ContactCard({this.title, this.content});

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$title -'),
        Text(content),
      ],
    );
  }
}
