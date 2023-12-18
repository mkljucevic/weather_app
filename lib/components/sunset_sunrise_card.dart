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
        color: Theme.of(context).cardColor,
      ),
      child: Row(
        children: [
          Text(
            'Sunrise',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(width: 15),
          SvgPicture.asset(
            'assets/sun.svg',
            width: 20,
            height: 20,
          ),
          const SizedBox(width: 5),
          Text(
            '04:54',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const Spacer(),
          Text(
            'Sunset',
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(width: 15),
          SvgPicture.asset(
            'assets/moon.svg',
            width: 20,
            height: 20,
          ),
          const SizedBox(width: 5),
          Text(
            '21:10',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
