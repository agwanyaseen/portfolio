import 'package:flutter/material.dart';
import 'package:portfolio/data/qualification_data.dart';
import 'package:portfolio/widgets/bootstrap_card.dart';

class Qualification extends StatefulWidget {
  @override
  _QualificationState createState() => _QualificationState();
}

class _QualificationState extends State<Qualification> {
  List<QualificationModel> qualifications = <QualificationModel>[];

  @override
  void initState() {
    qualifications = getQualifications();
    super.initState();
  }

  Widget _createQualificationsHeader() {
    final textStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Colors.grey,
    );
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
          ),
          BoxShadow(
            color: Colors.white,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Course',
            style: textStyle,
          ),
          Text(
            'School/Univesity',
            style: textStyle,
          ),
          Text(
            'Percentage',
            style: textStyle,
          ),
        ],
      ),
    );
  }

  Widget _createQualifications(QualificationModel model) {
    final textStyle = TextStyle(fontSize: 15);
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
          ),
          BoxShadow(
            color: Colors.white,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            model.course,
            style: textStyle,
          ),
          Text(
            model.board,
            style: textStyle,
          ),
          Text(
            '${model.percentage}%',
            style: textStyle,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final qual = Column(
      children: [
        _createQualificationsHeader(),
        ...qualifications.map((e) => _createQualifications(e))
      ],
    );
    return BootstrapCard(
      title: 'Qualification',
      child: qual,
    );
  }
}
