import "package:flutter/material.dart";
import "package:flutter_app/data/notifiers.dart";
import "package:flutter_app/views/pages/calculator_widget.dart";
import "package:flutter_app/views/pages/home_page.dart";
import "package:flutter_app/views/pages/profile_page.dart";
import "package:flutter_app/views/widgets/navbar_widget.dart";

List<Widget> pages = [HomePage(), ProfilePage(), CalculatorWidget()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App Learning"),
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.light : Icons.dark_mode);
              },
            ),
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageIndex,
        builder: (context, value, child) {
          return pages.elementAt(selectedPageIndex.value);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
