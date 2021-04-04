import 'package:flutter/material.dart';
import 'package:portfolio/widgets/bootstrap_card.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BootstrapCard(
      title: 'About Me',
      child: Text(
        'Hi, My Name is Yaseen Agwan. A developer employed at 1Rivet India as a Backend Developer whose core responsibility is to create backend services, web api, sql queries. I have 1+ year of  experience in backend development. Apart from just backend development I can also create frontend side and Database. I usually use dotnet as a tool to solve business problems but I also have knowledge of Dart(Flutter), Javascript. This portfolio is powered by Flutter',
        overflow: TextOverflow.visible,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
