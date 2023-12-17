import 'package:flutter/material.dart';

class ManageLocationsPage extends StatelessWidget {
  const ManageLocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
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
        ],
      )),
    );
  }
}
