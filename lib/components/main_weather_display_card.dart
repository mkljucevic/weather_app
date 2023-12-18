import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainWeatherDisplayCard extends StatelessWidget {
  const MainWeatherDisplayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Thu, 07:13', style: Theme.of(context).textTheme.bodySmall),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '10°',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Text(
                      'Prague',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
                SvgPicture.asset(
                  'assets/rain.svg',
                  width: 75,
                  height: 75,
                ),
              ],
            ),
            const Spacer(),
            Center(
              child: DotsIndicator(
                dotsCount: 4,
                position: 0,
                decorator: DotsDecorator(
                  size: const Size(6, 6),
                  activeSize: const Size(6, 6),
                  color: Colors.grey, // Inactive color
                  activeColor: Theme.of(context).textTheme.bodyMedium?.color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
