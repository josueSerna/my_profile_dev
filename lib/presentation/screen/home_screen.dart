import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_profile_dev/presentation/widgets/color_selector.dart';
import 'package:my_profile_dev/presentation/widgets/developer_card.dart';
import 'package:my_profile_dev/presentation/widgets/skill_card.dart';
import 'package:my_profile_dev/providers/developer_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final developer = ref.watch(developerProvider);

    return Scaffold(
      backgroundColor: developer.favoriteColor.withValues(alpha: 0.08),
      appBar: AppBar(
        title: const Text("Mi Perfil Dev"),
        centerTitle: true,
        backgroundColor: developer.favoriteColor,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DeveloperCard(developer: developer),
            const SizedBox(height: 25),
            Text(
              "Cambiar color favorito",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            const ColorSelector(),
            const SizedBox(height: 30),
            Text(
              "Tecnologías favoritas",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: developer.skills.length,
              itemBuilder: (context, index) {
                final skill = developer.skills[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: SkillCard(skill: skill),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
