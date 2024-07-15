import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fitness_tracker_app/viewmodels/home_viewmodel.dart';
import 'package:fitness_tracker_app/views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
      ],
      child: MaterialApp(
        home: HomeView(),
      ),
    );
  }
}
