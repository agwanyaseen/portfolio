import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_helpers.dart';
import 'package:url_launcher/url_launcher.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var padding = _getMarginAccordingtoWindow(context);
    return Container(
      padding: EdgeInsets.only(left: padding),
      child: Wrap(
        children: [
          Container(
            margin: EdgeInsets.only(left: padding),
            height: 200,
            width: 200,
            child: CircleAvatar(
              backgroundImage: AssetImage('images/yaseen.jpg'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Yaseen Agwan',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0),
                ),
                Text(
                  'Backend Developer | Associate L1',
                  style: TextStyle(color: Colors.white70, fontSize: 20.0),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text('Current Employer: ',
                        style:
                            TextStyle(color: Colors.white70, fontSize: 20.0)),
                    ElevatedButton(
                      onPressed: _launchURL,
                      child: Text(
                        '1Rivet',
                        style: TextStyle(color: Colors.white70, fontSize: 20.0),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'C# | Javscript | Asp .Net | Asp .Net Mvc | Dotnet Core| Entity Framework',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _launchURL() async {
    const rivetUrl = "http://1Rivet.com";
    // window.open(rivetUrl, '');
    // const rivetUrl = "1Rivet.com";
    await canLaunch(rivetUrl)
        ? await launch(rivetUrl)
        : print('Issue In launching Url');
  }

  double _getMarginAccordingtoWindow(BuildContext context) {
    var window = getWindow(context);
    double margin = 60;
    switch (window) {
      case Window.Small:
      case Window.ExtraSmall:
        margin = 20;
        break;
      default:
    }
    return margin;
  }
}
