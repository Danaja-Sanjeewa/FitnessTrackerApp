import 'package:flutter/material.dart';
import 'package:fitness_tracker_app/models/user_model.dart';
import 'package:fitness_tracker_app/services/database_service.dart';

class GoalViewModel with ChangeNotifier {
  final DatabaseService _dbService = DatabaseService();

  List<Goal> _goals = [];
  List<Goal> get goals => _goals;

  Future<void> fetchGoals() async {
    _goals = await _dbService.getGoals();
    notifyListeners();
  }

  Future<void> addGoal(Goal goal) async {
    await _dbService.addGoal(goal);
    await fetchGoals();
  }
}
