import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const BottomNavigationScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,

        onTap: (index) {
          navigationShell.goBranch(index, initialLocation:true,);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.library_music_rounded), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
