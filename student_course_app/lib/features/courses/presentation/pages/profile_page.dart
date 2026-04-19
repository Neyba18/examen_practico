import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          CircleAvatar(
            radius: 50,
            child: Icon(Icons.person, size: 50),
          ),
          SizedBox(height: 20),
          Text(
            'Juan Pérez',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text('Estudiante de cursos móviles'),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('juan@email.com'),
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('3 cursos inscritos'),
          ),
        ],
      ),
    );
  }
}


