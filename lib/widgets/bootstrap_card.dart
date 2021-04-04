import 'package:flutter/material.dart';

class BootstrapCard extends StatefulWidget {
  final String title;
  final Widget child;
  BootstrapCard({@required this.title, @required this.child});

  @override
  _BootstrapCardState createState() => _BootstrapCardState();
}

class _BootstrapCardState extends State<BootstrapCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 30,
      ),
      decoration: BoxDecoration(),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: []
            ..add(
              buildTitle(context),
            )
            ..add(
              Divider(
                color: Colors.amber,
                thickness: 2.0,
              ),
            )
            ..add(
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 5),
                child: widget.child,
              ),
            ),
        ),
      ),
    );
  }

  Widget buildTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Text(
        widget.title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50.0,
          color: Colors.grey,
        ),
      ),
    );
  }
}
