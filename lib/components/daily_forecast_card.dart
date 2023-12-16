import 'package:flutter/material.dart';

class DailyForecastCard extends StatelessWidget {
  const DailyForecastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
    );
  }
}
