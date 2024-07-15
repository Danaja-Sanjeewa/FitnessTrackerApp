import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fitness_tracker_app/models/workout_model.dart';

class DatabaseService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<Workout>> getWorkouts() async {
    QuerySnapshot snapshot = await _db.collection('workouts').get();
    return snapshot.docs.map((doc) => Workout.fromJson(doc.data())).toList();
  }

  Future<void> addWorkout(Workout workout) async {
    await _db.collection('workouts').add(workout.toJson());
  }

  Future<List<Goal>> getGoals() async {
    QuerySnapshot snapshot = await _db.collection('goals').get();
    return snapshot.docs.map((doc) => Goal.fromJson(doc.data())).toList();
  }

  Future<void> addGoal(Goal goal) async {
    await _db.collection('goals').add(goal.toJson());
  }
}