import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key, required this.child});
  final Widget child;

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _indexFromLocation() {
    final loc =  GoRouterState.of(context).uri.path;
    if (loc.startsWith('/dashboard')) return 0;
    if (loc.startsWith('/scholarships')) return 1;
    if (loc.startsWith('/applications')) return 2;
    return 3;
  }

  void _onTap(int idx) {
    switch (idx) {
      case 0:
        context.go('/dashboard');
        break;
      case 1:
        context.go('/scholarships');
        break;
      case 2:
        context.go('/applications');
        break;
      default:
        context.go('/settings');
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = _indexFromLocation();

    return Scaffold(
      body: widget.child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: _onTap,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.school_outlined), label: 'Beasiswa'),
          NavigationDestination(icon: Icon(Icons.track_changes), label: 'Aplikasi'),
          NavigationDestination(icon: Icon(Icons.person_outline), label: 'Profil'),
        ],
      ),
    );
  }
}
