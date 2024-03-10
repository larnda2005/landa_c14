import 'package:flutter/material.dart';


class FormatDates {
  get DateFormat => null;

  String dateFormatShortMonthDayYear(DateTime date) {
    return DateFormat.yMMMd().format(date);
  }

  String dateFormatDayNumber(DateTime date) {
    return DateFormat.d().format(date);
  }

  String dateFormatShortDayName(DateTime date) {
    return DateFormat.E().format(date);
  }
}

class MoodIcons {
  final String title;
  final Color color;
  final double rotation;
  final IconData icon;

  const MoodIcons(
      {required this.title,
      required this.color,
      required this.rotation,
      required this.icon});
}

const List<MoodIcons> _moodIconsList = <MoodIcons>[
  MoodIcons(
    title: 'Very Satisfied',
    color: Colors.amber,
    rotation: 0.4,
    icon: Icons.sentiment_very_satisfied,
  ),
  MoodIcons(
    title: 'Satisfied',
    color: Colors.green,
    rotation: 0.2,
    icon: Icons.sentiment_satisfied,
  ),
  MoodIcons(
    title: 'Neutral',
    color: Colors.grey,
    rotation: 0.0,
    icon: Icons.sentiment_neutral,
  ),
  MoodIcons(
    title: 'Dissatisfied',
    color: Colors.cyan,
    rotation: -0.2,
    icon: Icons.sentiment_dissatisfied,
  ),
  MoodIcons(
    title: 'Very Dissatisfied',
    color: Colors.red,
    rotation: -0.4,
    icon: Icons.sentiment_very_dissatisfied,
  ),
];

IconData getMoodIcon(String mood) {
  return _moodIconsList.firstWhere((icon) => icon.title == mood).icon;
}

Color getMoodColor(String mood) {
  return _moodIconsList.firstWhere((icon) => icon.title == mood).color;
}

double getMoodRotation(String mood) {
  return _moodIconsList.firstWhere((icon) => icon.title == mood).rotation;
}

List<MoodIcons> getMoodIconsList() {
  return _moodIconsList;
}