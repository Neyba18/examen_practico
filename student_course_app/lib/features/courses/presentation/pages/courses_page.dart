import 'package:flutter/material.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  String searchText = '';
  final List<Map<String, dynamic>> courses = [
    {
      'title': 'Flutter Básico',
      'description': 'Aprende widgets y navegación',
      'progress': 0.4,
    },
    {
      'title': 'Riverpod',
      'description': 'Gestión de estado moderna',
      'progress': 0.7,
    },
    {
      'title': 'SQLite',
      'description': 'Guardar datos localmente',
      'progress': 0.9,
    },
  ];

  void updateProgress(int index) {
    setState(() {
      if (courses[index]['progress'] < 1.0) {
        courses[index]['progress'] += 0.1;

        if (courses[index]['progress'] > 1.0) {
          courses[index]['progress'] = 1.0;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
     final filteredCourses = courses.where((course) {
       return course['title'] 
       .toString() 
       .toLowerCase() .contains(searchText.toLowerCase());
        }).toList();
        
   return Padding(
  padding: const EdgeInsets.all(16),
  child: Column(
    children: [
      TextField(
        onChanged: (value) { setState(() { searchText = value; }); },
        decoration: InputDecoration(
          hintText: 'Buscar curso',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      const SizedBox(height: 16),
      Expanded(
        child: ListView.builder(
         itemCount: filteredCourses.length,
          itemBuilder: (context, index) {
           final course = filteredCourses[index];

            return Card(
              margin: const EdgeInsets.only(bottom: 16),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      course['title'],
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(course['description']),
                    const SizedBox(height: 12),
                    LinearProgressIndicator(
                      value: course['progress'],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${(course['progress'] * 100).toInt()}% completado',
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () => updateProgress(index),
                      child: const Text('Actualizar progreso'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ],
  ),
);
  }
}


