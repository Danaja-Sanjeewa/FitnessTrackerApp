import 'package:flutter/material.dart';

class User {
  final String name;
  final String email;
  final List<Goal> goals;

  User({required this.name, required this.email, required this.goals});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'goals': goals.map((goal) => goal.toJson()).toList(),
    };
  }

  static User fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
      goals: (json['goals'] as List).map((goalJson) => Goal.fromJson(goalJson)).toList(),
    );
  }
}

class Goal {
  final String description;
  final bool isCompleted;

  Goal({required this.description, required this.isCompleted});

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'isCompleted': isCompleted,
    };
  }

  static Goal fromJson(Map<String, dynamic> json) {
    return Goal(
      description: json['description'],
      isCompleted: json['isCompleted'],
    );
  }
}
