import 'package:flutter/material.dart';
import 'package:weather_app/components/main_weather_display_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f3f3),
      key: scaffoldKey,
      drawer: const Drawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => scaffoldKey.currentState?.openDrawer(),
                    child: const Icon(Icons.menu),
                  ),
                  const SizedBox(width: 20),
                  const Text('Tuesday 25, July'),
                  const Spacer(),
                  const Icon(Icons.calendar_month),
                  const SizedBox(width: 20),
                  const Icon(Icons.settings),
                ],
              ),
              const SizedBox(height: 20),
              const MainWeatherDisplayCard(),
            ],
          ),
        ),
      ),
    );
  }
}
