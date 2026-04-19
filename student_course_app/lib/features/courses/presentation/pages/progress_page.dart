import 'package:flutter/material.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Progreso General',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text('Flutter Básico'),
          SizedBox(height: 8),
          LinearProgressIndicator(value: 0.4),
          SizedBox(height: 8),
          Text('40% completado'),
          SizedBox(height: 20),
          Text('Riverpod'),
          SizedBox(height: 8),
          LinearProgressIndicator(value: 0.7),
          SizedBox(height: 8),
          Text('70% completado'),
          SizedBox(height: 20),
          Text('SQLite'),
          SizedBox(height: 8),
          LinearProgressIndicator(value: 0.9),
          SizedBox(height: 8),
          Text('90% completado'),
        ],
      ),
    );
  }
}

