import 'package:flutter/material.dart';
import 'package:portfolio/utils/size_helpers.dart';
import 'package:portfolio/widgets/presentation/experience.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';

import 'widgets/presentation/about_me.dart';
import 'widgets/presentation/intro.dart';
import 'widgets/presentation/qualification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final fontColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yaseen Agwan',
      theme: ThemeData(
        primarySwatch: fontColor,
        textTheme: TextTheme(
          headline3: TextStyle(
            color: fontColor,
          ),
          headline6: TextStyle(
            color: fontColor,
          ),
          bodyText1: TextStyle(
            color: fontColor,
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final paddingSize = getSize(context);
    return Scaffold(
      body: SmoothScrollWeb(
        controller: ScrollController(),
        child: Container(
          child: Expanded(
            child: Scrollbar(
              hoverThickness: 10.0,
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('/images/background.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Intro(),
                    ),
                  ),
                  applyPadding(AboutMe(), paddingSize),
                  applyPadding(Experience(), paddingSize),
                  applyPadding(Qualification(), paddingSize),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget applyPadding(Widget child, double padding) {
    return Padding(
      padding: EdgeInsets.only(left: padding, right: padding),
      child: child,
    );
  }
}
