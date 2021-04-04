class ExperienceData {
  String companyName;
  String position;
  String from;
  String to;
  bool isCurrent;

  ExperienceData({
    this.companyName,
    this.position,
    this.from,
    this.to,
    this.isCurrent,
  });
}

List<ExperienceData> getExperience() {
  return [
    ExperienceData(
      companyName: '1Rivet',
      position: 'Associate L1',
      from: 'February, 2021',
      to: null,
      isCurrent: true,
    ),
    ExperienceData(
      companyName: '1Rivet',
      position: 'Associate Trainee',
      from: 'February 2020',
      to: 'February 2021',
      isCurrent: false,
    ),
    ExperienceData(
      companyName: '1Rivet',
      position: 'Intern',
      from: 'June, 2019',
      to: 'November 2019',
      isCurrent: false,
    ),
  ];
}
