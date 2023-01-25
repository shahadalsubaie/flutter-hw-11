import 'package:flutter/material.dart';

import 'Cart.dart';
import 'Productp.dart';
import 'Profil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var CurrentIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final pages = [const Productp(), const Cart(), const Profil()];
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: CurrentIndex,
          onTap: (newIndex) {
            CurrentIndex = newIndex;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Login',
            ),
          ],
        ),
        body: pages[CurrentIndex]);
  }
}

// class Productp extends StatelessWidget {
//   const Productp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 117, 110, 149),
//       body: SafeArea(
//         child: Column(
//           children: const [
//             Image(image: NetworkImage('https://cdn.salla.sa/Aedxd/8D8EilcRfEvFAvtNwz5eh9828wz1xhZiOOyXHYiv.png')),
//             Text('hhhh'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Cart extends StatelessWidget {
//   const Cart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 189, 89, 89),
//       body: SafeArea(
//         child: Column(
//           children: const [
//             Text('tttttt'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Profil extends StatelessWidget {
//   const Profil({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 153, 186, 97),
//       body: SafeArea(
//         child: Column(
//           children: const [
//             Text('gggggg'),
//           ],
//         ),
//       ),
//     );
//   }
// }
