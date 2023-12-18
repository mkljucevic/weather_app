import 'package:flutter/material.dart';
import 'package:weather_app/components/daily_forecast_card.dart';
import 'package:weather_app/components/hourly_forecast_card.dart';
import 'package:weather_app/components/main_weather_display_card.dart';
import 'package:weather_app/components/side_drawer.dart';
import 'package:weather_app/components/side_end_drawer.dart';
import 'package:weather_app/components/sunset_sunrise_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xfff3f3f3),
      key: scaffoldKey,
      drawer: const SideDrawer(),
      endDrawer: const SideEndDrawer(),
      drawerScrimColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => scaffoldKey.currentState?.openDrawer(),
                      child: const Icon(Icons.menu),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Tuesday 25, July',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const Spacer(),
                    const Icon(Icons.calendar_month),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () => scaffoldKey.currentState?.openEndDrawer(),
                      child: const Icon(Icons.settings),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 5.0),
                child: Container(
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: MainWeatherDisplayCard(),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: HourlyForecastCard(),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: SunriseSunsetCard(),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: DailyForecastCard(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
