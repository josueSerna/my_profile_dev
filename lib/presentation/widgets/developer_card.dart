import 'package:flutter/material.dart';
import 'package:my_profile_dev/data/models/developer.dart';

class DeveloperCard extends StatelessWidget {
  final Developer developer;

  const DeveloperCard({super.key, required this.developer});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 45,
              backgroundColor: developer.favoriteColor,
              child: const Icon(Icons.person, size: 50, color: Colors.white),
            ),
            const SizedBox(height: 15),
            Text(
              developer.name,
              style: Theme.of(
                context,
              ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              developer.role,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Text(developer.email, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 15),
            Text(developer.description, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
