import 'package:flutter/material.dart';
import 'courses_page.dart';
import 'progress_page.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Courses'),
      ),
      body: PageView(
    
children: [
  const CoursesPage(),
  const ProgressPage(),
  const ProfilePage(),
],

      ),
    );
  }
}