import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 217, 218, 215),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(child: const Icon(Icons.person, size: 200, color: Colors.grey)),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            const Text('Email Address'),
            const TextField(),
            ElevatedButton(onPressed: () {}, child: const Text('Enter'))
          ],
        ),
      ),
    );
  }
}
