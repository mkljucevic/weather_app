import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          SvgPicture.asset(
            'assets/rain.svg',
            width: 23,
            height: 23,
          ),
          const Text('17°'),
          Row(
            children: [
              Image.asset('assets/raindrop.png', scale: 3.5),
              const SizedBox(width: 2),
              const Text(
                '100%',
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
