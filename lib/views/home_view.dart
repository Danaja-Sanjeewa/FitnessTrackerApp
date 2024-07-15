import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fitness_tracker_app/viewmodels/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomeViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Fitness Tracker')),
      body: ListView(
        children: [
          Text('Steps: ${viewModel.steps}'),
          Text('Active Minutes: ${viewModel.activeMinutes}'),
          // Display recent workouts
        ],
      ),
    );
  }
}
