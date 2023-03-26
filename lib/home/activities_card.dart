import 'package:flutter/material.dart';

class ActivitiesCard extends StatelessWidget {
  const ActivitiesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white.withOpacity(0.5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.location_on, color: Colors.orange),
              SizedBox(width: 20),
              Text(
                "Activities Today",
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Text(
                "06 : 00 pm",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            "Relaxation and Meditation",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
