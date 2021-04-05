import 'package:flutter/material.dart';
import 'package:portfolio/data/about_me_data.dart';

import 'package:portfolio/utils/size_helpers.dart';
import 'package:portfolio/widgets/bootstrap_card.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  final aboutMe = getAboutMe();

  final skills = getSkills();

  bool show = false;

  _onExpandButtonPressed() {
    setState(() {
      show = !show;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BootstrapCard(
      title: 'About Me',
      child: Column(
        children: [
          _buildAboutMePara(),
          ElevatedButton(
            onPressed: _onExpandButtonPressed,
            child: Text(show ? 'Close' : 'Cick to Know More About Me'),
          ),
          if (show)
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(15),
              child: _buildResonsiveModel(context),
            ),
        ],
      ),
    );
  }

  Widget _buildAboutMeBasicDetails() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: aboutMe.map((e) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                e.value,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 22.0,
                  color: Colors.grey,
                ),
              ),
              Container(
                child: Text(
                  e.name,
                  style: TextStyle(
                    fontSize: 22.0,
                  ),
                ),
                padding: const EdgeInsets.only(left: 6),
              ),
              SizedBox(
                height: 7,
              ),
            ],
          );
        }).toList());
  }

  Widget _buildSkills(BuildContext context) {
    return Column(
        children: skills
            .map(
              (e) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e.name,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 22,
                    ),
                  ),
                  Slider(
                    min: 0,
                    max: 10,
                    activeColor: Colors.amber,
                    value: e.rating,
                    onChanged: null,
                  ),
                ],
              ),
            )
            .toList());
  }

  Widget _buildAboutMePara() {
    return Text(
      'Hi, My Name is Yaseen Agwan. A developer employed at 1Rivet India as a Backend Developer whose core responsibility is to create backend services, web api, sql queries. I have 1+ year of  experience in backend development. Apart from just backend development I can also create frontend side and Database. I usually use dotnet as a tool to solve business problems but I also have knowledge of Dart(Flutter), Javascript. This portfolio is powered by Flutter',
      overflow: TextOverflow.visible,
      style: TextStyle(
        fontSize: 20.0,
      ),
    );
  }

  Widget _buildResonsiveModel(BuildContext context) {
    final childrens = [_buildAboutMeBasicDetails(), _buildSkills(context)];

    final window = getWindow(context);

    if (window == Window.Small ||
        window == Window.ExtraSmall ||
        window == Window.ExtraSmall) {
      return Column(children: childrens);
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: childrens,
    );
  }
}
