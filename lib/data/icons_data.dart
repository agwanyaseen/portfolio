import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconData {
  FaIcon icon;
  String url;
  String toolTip;
  IconData({this.icon, this.url, this.toolTip});
}

List<IconData> getIcons() {
  const iconSize = 30.0;
  return <IconData>[
    IconData(
        icon: FaIcon(FontAwesomeIcons.instagram, size: iconSize),
        url: 'https://www.instagram.com/yaseen.agwan/',
        toolTip: 'Instagram'),
    IconData(
      icon: FaIcon(FontAwesomeIcons.linkedin, size: iconSize),
      url: 'https://in.linkedin.com/in/yaseen-agwan-618732171',
      toolTip: 'LinkedIn',
    ),
    IconData(
      icon: FaIcon(FontAwesomeIcons.github, size: iconSize),
      url: 'https://github.com/agwanyaseen',
      toolTip: 'Github',
    ),
    IconData(
        icon: FaIcon(
          FontAwesomeIcons.envelope,
          size: iconSize,
        ),
        url: 'mailto:yaseen04071998@gmail.com',
        toolTip: 'Email'),
  ];
}
