import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/components/hourly_forecast_card.dart';
import 'package:weather_app/components/main_weather_display_card.dart';

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
              Container(
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
                  )),
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
                      padding: EdgeInsets.only(right: 10),
                      child: HourlyForecastCard(),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const Text('Sunrise'),
                    const SizedBox(width: 15),
                    SvgPicture.asset(
                      'assets/sun.svg',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 5),
                    const Text('04:54'),
                    const Spacer(),
                    const Text('Sunset'),
                    const SizedBox(width: 15),
                    SvgPicture.asset(
                      'assets/moon.svg',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(width: 5),
                    const Text('21:06'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
