import 'package:flutter/material.dart';
import 'package:portfolio/data/qualification_data.dart';
import 'package:portfolio/widgets/bootstrap_card.dart';

class Qualification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BootstrapCard(
      title: 'Qualification',
      child: Table(
        defaultColumnWidth: FlexColumnWidth(5.0),
        border: TableBorder.symmetric(),
        children: [
          TableRow(
            children: [
              Column(
                children: [
                  Text(
                    'Degree/Course',
                    style: _tableHeaderStyle(),
                  ),
                ],
              ),
              Column(
                children: [
                  Text('Unversity/Board', style: _tableHeaderStyle()),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Percentage',
                    style: _tableHeaderStyle(),
                  ),
                ],
              ),
            ],
          )
        ]..addAll(_buildQualification()),
      ),
    );
  }

  TextStyle _tableHeaderStyle() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
    );
  }

  TextStyle _tableContentStyle() {
    return TextStyle(
      fontSize: 20,
    );
  }

  List<TableRow> _buildQualification() {
    var qualifications = getQualifications();
    var qualRows = <TableRow>[];
    qualifications.forEach((element) {
      final qualRow = TableRow(
        children: [
          Column(
            children: [
              Text(element.course, style: _tableContentStyle()),
            ],
          ),
          Column(
            children: [
              Text(element.board, style: _tableContentStyle()),
            ],
          ),
          Column(
            children: [
              Text('${element.percentage}%', style: _tableContentStyle()),
            ],
          )
        ],
      );

      qualRows.add(qualRow);
    });
    return qualRows;
  }
}
