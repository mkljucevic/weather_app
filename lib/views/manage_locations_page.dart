import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ManageLocationsPage extends StatelessWidget {
  const ManageLocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f3f3),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(width: 20),
                  const Text('Manage Locations'),
                  const Spacer(),
                  const Icon(Icons.search),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
              child: Text(
                'Favourite Locations',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  FavLocationCard(),
                  SizedBox(height: 10),
                  FavLocationCard(),
                  SizedBox(height: 10),
                  FavLocationCard(),
                  SizedBox(height: 10),
                  FavLocationCard(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 45.0, bottom: 20.0),
              child: Text(
                'Current Location',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: FavLocationCard(),
            ),
          ],
        ),
      ),
    );
  }
}

class FavLocationCard extends StatelessWidget {
  const FavLocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      child: Row(
        children: [
          const Text('Prague, Czech Republic'),
          const Spacer(),
          SvgPicture.asset('assets/sun.svg'),
          const SizedBox(width: 5),
          const Text('24°'),
          const SizedBox(width: 8),
          const Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
