import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:my_profile_dev/data/models/skill.dart';

class SkillCard extends StatelessWidget {
  final Skill skill;

  const SkillCard({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          context.push("/skill", extra: skill);
        },
        leading: CircleAvatar(
          backgroundColor: skill.color.withValues(alpha: 0.2),
          child: FaIcon(skill.icon, color: skill.color),
        ),
        title: Text(
          skill.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 18),
      ),
    );
  }
}
