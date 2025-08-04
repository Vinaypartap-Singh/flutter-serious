import "package:flutter/material.dart";
import "package:flutter_app/data/notifiers.dart";

class NavbarWidget extends StatefulWidget {
  const NavbarWidget({super.key});

  @override
  State<NavbarWidget> createState() => _NavbarWidgetState();
}

class _NavbarWidgetState extends State<NavbarWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageIndex,
      builder: (context, value, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
            NavigationDestination(
              icon: Icon(Icons.calculate),
              label: "Calculator",
            ),
          ],
          onDestinationSelected: (value) {
            setState(() {
              selectedPageIndex.value = value;
            });
          },
          selectedIndex: selectedPageIndex.value,
        );
      },
    );
  }
}
