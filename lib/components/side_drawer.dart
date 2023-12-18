import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/styles/colors.dart';
import 'package:weather_app/views/manage_locations_page.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                cursorColor: cBlue1,
                style: TextStyle(
                    fontSize: 14.0,
                    color: Theme.of(context).textTheme.bodyMedium?.color),
                decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          width: 0.0),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          width: 0.0),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    fillColor: Theme.of(context).cardColor,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                    ),
                    hintText: 'Search locations',
                    hintStyle: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium?.color,
                    )),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  const Icon(Icons.star),
                  const SizedBox(width: 10),
                  Text(
                    'Favourite Locations',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Column(
                children: [
                  FavLocationRow(),
                  SizedBox(height: 10),
                  FavLocationRow(),
                  SizedBox(height: 10),
                  FavLocationRow(),
                ],
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ManageLocationsPage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Menage Locations',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w700),
                    ),
                    const Icon(Icons.tune),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavLocationRow extends StatelessWidget {
  const FavLocationRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 31),
        const Icon(
          Icons.location_on,
          size: 15,
        ),
        const SizedBox(width: 5),
        Text(
          'Prague',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Spacer(),
        SvgPicture.asset(
          'assets/sun.svg',
          width: 20,
          height: 20,
        ),
        const SizedBox(width: 5),
        Text(
          '24°',
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
