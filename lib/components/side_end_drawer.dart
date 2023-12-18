import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_app/styles/colors.dart';

class SideEndDrawer extends StatelessWidget {
  const SideEndDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:
          Theme.of(context).scaffoldBackgroundColor.withOpacity(0.8),
      child: SafeArea(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 6,
            sigmaY: 6,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.settings),
                    const SizedBox(width: 5),
                    Text(
                      'Settings',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text('Unit', style: Theme.of(context).textTheme.bodyMedium),
                    const Spacer(),
                    Text(
                      '°C',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: cBlue2, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text('Language',
                        style: Theme.of(context).textTheme.bodyMedium),
                    const Spacer(),
                    Text(
                      'English (UK)',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: cBlue2, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
