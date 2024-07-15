import 'package:flutter/material.dart';

class Workout {
  final String type;
  final int duration;
  final DateTime date;

  Workout({required this.type, required this.duration, required this.date});

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'duration': duration,
      'date': date.toIso8601String(),
    };
  }

  static Workout fromJson(Map<String, dynamic> json) {
    return Workout(
      type: json['type'],
      duration: json['duration'],
      date: DateTime.parse(json['date']),
    );
  }
}
