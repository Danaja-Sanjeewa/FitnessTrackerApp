import 'package:flutter/material.dart';
import 'package:fitness_tracker_app/models/workout_model.dart';
import 'package:fitness_tracker_app/services/database_service.dart';

class WorkoutViewModel with ChangeNotifier {
  final DatabaseService _dbService = DatabaseService();

  List<Workout> _workouts = [];
  List<Workout> get workouts => _workouts;

  Future<void> fetchWorkouts() async {
    _workouts = await _dbService.getWorkouts();
    notifyListeners();
  }

  Future<void> addWorkout(Workout workout) async {
    await _dbService.addWorkout(workout);
    await fetchWorkouts();
  }
}
