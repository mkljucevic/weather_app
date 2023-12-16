import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SunriseSunsetCard extends StatelessWidget {
  const SunriseSunsetCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
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
    );
  }
}
