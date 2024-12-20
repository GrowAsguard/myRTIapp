import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(FitnessTrackerApp());
}

class FitnessTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FitnessTrackerHome(),
    );
  }
}

class FitnessTrackerHome extends StatefulWidget {
  @override
  _FitnessTrackerHomeState createState() => _FitnessTrackerHomeState();
}

class _FitnessTrackerHomeState extends State<FitnessTrackerHome> {
  int steps = 0; // Current step count
  final double caloriesPerStep = 0.04;
  Timer? _timer;

  double get caloriesBurned => steps * caloriesPerStep;

  void startStepSimulation() {
    // If a timer is already running, do nothing
    if (_timer != null) return;

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        steps += 1; // Increment steps naturally
      });
    });
  }

  void stopStepSimulation() {
    _timer?.cancel();
    _timer = null;
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Tracker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Steps Taken:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '$steps',
              style: TextStyle(fontSize: 48, color: Colors.blue),
            ),
            SizedBox(height: 20),
            Text(
              'Calories Burned:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '${caloriesBurned.toStringAsFixed(2)} kcal',
              style: TextStyle(fontSize: 48, color: Colors.green),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: startStepSimulation,
                  child: Text('Start Simulation'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: stopStepSimulation,
                  child: Text('Stop Simulation'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}