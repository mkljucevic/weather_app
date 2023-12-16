import 'package:flutter/material.dart';

class HourlyForecastCard extends StatelessWidget {
  const HourlyForecastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            '07:00',
            style: TextStyle(fontSize: 10),
          ),
          Image.asset(
            'assets/heavy-rain.png',
            scale: 2.8,
          ),
          const Text('17°'),
          const Text(
            '100%',
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
