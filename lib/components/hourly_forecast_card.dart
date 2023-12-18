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
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '07:00',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SvgPicture.asset(
            'assets/rain.svg',
            width: 23,
            height: 23,
          ),
          Text(
            '17°',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Row(
            children: [
              Image.asset('assets/raindrop.png', scale: 3.5),
              const SizedBox(width: 2),
              Text(
                '100%',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
