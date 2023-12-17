import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/views/manage_locations_page.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xfff3f3f3),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              TextField(
                //style: const TextStyle(fontSize: 12.0, color: Colors.black),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0.0),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 0.0),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search locations'),
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Icon(Icons.star),
                  SizedBox(width: 10),
                  Text(
                    'Favourite Locations',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Menage Locations',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.tune),
                  ],
                ),
              )
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
        const Text('Prague'),
        const Spacer(),
        SvgPicture.asset(
          'assets/sun.svg',
          width: 20,
          height: 20,
        ),
        const Text('24°')
      ],
    );
  }
}
