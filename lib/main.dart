import 'package:flutter/material.dart';

void main() => runApp(const EduApp());

class EduApp extends StatelessWidget {
  const EduApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduLearn',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const MainNav(),
    );
  }
}

class MainNav extends StatefulWidget {
  const MainNav({super.key});
  @override
  State<MainNav> createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  int _index = 0;
  final _pages = const [HomeScreen(), CoursesScreen(), ProfileScreen()];
  final _titles = const ['Home', 'Courses', 'Profile'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titles[_index])),
      body: _pages[_index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (i) => setState(() => _index = i),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book_outlined),
            selectedIcon: Icon(Icons.menu_book),
            label: 'Courses',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Welcome to LearnHere 🎓',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 6,
      itemBuilder: (c, i) => Card(
        child: ListTile(
          leading: const Icon(Icons.play_circle),
          title: Text('Course ${i + 1}'),
          subtitle: const Text('Tap to open'),
          onTap: () => ScaffoldMessenger.of(
            c,
          ).showSnackBar(SnackBar(content: Text('Open Course ${i + 1}'))),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Name: Guest', style: TextStyle(fontSize: 18)),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Sign-in coming soon…')),
            ),
            child: const Text('Sign in'),
          ),
        ],
      ),
    );
  }
}
