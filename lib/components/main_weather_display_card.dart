import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainWeatherDisplayCard extends StatelessWidget {
  const MainWeatherDisplayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Thu, 07:13'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '10°',
                      style: TextStyle(fontSize: 55),
                    ),
                    Text('Prague'),
                  ],
                ),
                SvgPicture.asset(
                  'assets/rain.svg',
                  width: 75,
                  height: 75,
                ),
              ],
            ),
            Center(
              child: DotsIndicator(
                dotsCount: 4,
                position: 0,
                decorator: const DotsDecorator(
                  size: Size(6, 6),
                  activeSize: Size(6, 6),
                  color: Colors.grey, // Inactive color
                  activeColor: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
