import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DailyForecastCard extends StatelessWidget {
  const DailyForecastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 195,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor,
      ),
      child: const Column(
        children: [
          DailyForecastRow(
            date: '26/07',
            day: 'Wed',
            iconSrc: 'assets/sun.svg',
            tempLow: '10',
            tempHigh: '19',
          ),
          SizedBox(height: 15),
          DailyForecastRow(
            date: '27/07',
            day: 'Thu',
            iconSrc: 'assets/rain.svg',
            tempLow: '11',
            tempHigh: '20',
          ),
          SizedBox(height: 15),
          DailyForecastRow(
            date: '28/07',
            day: 'Fri',
            iconSrc: 'assets/sun.svg',
            tempLow: '8',
            tempHigh: '16',
          ),
          SizedBox(height: 15),
          DailyForecastRow(
            date: '29/07',
            day: 'Sat',
            iconSrc: 'assets/rain.svg',
            tempLow: '11',
            tempHigh: '20',
          ),
          SizedBox(height: 15),
          DailyForecastRow(
            date: '30/07',
            day: 'Sun',
            iconSrc: 'assets/sun.svg',
            tempLow: '10',
            tempHigh: '17',
          ),
        ],
      ),
    );
  }
}

class DailyForecastRow extends StatelessWidget {
  final String date; // switch to DateTime eventualy
  final String day; // remove once full datetime has been implemented
  final String iconSrc;
  final String tempLow;
  final String tempHigh;

  const DailyForecastRow({
    super.key,
    required this.date,
    required this.day,
    required this.iconSrc,
    required this.tempHigh,
    required this.tempLow,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(date, style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(width: 8),
            Text(day, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(iconSrc, width: 20, height: 20),
            const SizedBox(width: 8),
            Text('Sunny', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        Text('$tempLow° $tempHigh°',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w600)),
      ],
    );
  }
}
