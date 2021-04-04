import 'package:flutter/material.dart';
import 'package:portfolio/data/experience_data.dart';
import 'package:portfolio/widgets/bootstrap_card.dart';

class Experience extends StatefulWidget {
  @override
  _ExperienceState createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  int _index = 0;
  List<ExperienceData> _experiences = <ExperienceData>[];

  @override
  void initState() {
    _experiences = getExperience();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BootstrapCard(
      title: 'Experience',
      child: experienceWidget(),
    );
  }

  Widget experienceWidget() {
    return Stepper(
      currentStep: _index,
      steps: createExperienceStep(),
      onStepContinue: () {
        if (_index >= _experiences.length - 1) {
          return;
        }
        setState(() {
          _index++;
        });
      },
      onStepTapped: (index) {
        setState(() {
          _index = index;
        });
      },
      onStepCancel: () {
        if (_index <= 0) {
          return;
        }
        setState(() {
          _index--;
        });
      },
    );
  }

  List<Step> createExperienceStep() {
    var experienceSteps = <Step>[];
    _experiences.forEach((element) {
      final expriencesStep = Step(
        title: Text(
          "${element.companyName} (${element.position})",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        content: Container(
          alignment: Alignment.centerLeft,
          child: Text(
            getexperience(
              element.from,
              element.to,
              element.isCurrent,
            ),
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        isActive: _experiences.indexOf(element) == 0 ? true : false,
      );

      experienceSteps.add(expriencesStep);
    });

    return experienceSteps;
  }

  String getexperience(String from, String to, bool isCurrent) {
    var end = isCurrent ? "Present" : to;
    return from + " - " + end;
  }
}
