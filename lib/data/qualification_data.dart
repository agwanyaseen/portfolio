class QualificationModel {
  String course;
  String board;
  double percentage;

  QualificationModel(this.course, this.board, this.percentage);
}

List<QualificationModel> getQualifications() {
  return [
    QualificationModel('B.Sc (Computer Science)', 'Pune University', 75),
    QualificationModel('12th', 'C.B.S.E', 65),
    QualificationModel('10th', 'C.B.S.E', 65),
  ];
}
