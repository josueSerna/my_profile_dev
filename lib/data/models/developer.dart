import 'package:flutter/material.dart';

import 'skill.dart';

class Developer {
  final String name;
  final String email;
  final String role;
  final String description;
  final Color favoriteColor;
  final List<Skill> skills;

  const Developer({
    required this.name,
    required this.email,
    required this.role,
    required this.description,
    required this.favoriteColor,
    required this.skills,
  });

  Developer copyWith({
    String? name,
    String? email,
    String? role,
    String? description,
    Color? favoriteColor,
    List<Skill>? skills,
  }) {
    return Developer(
      name: name ?? this.name,
      email: email ?? this.email,
      role: role ?? this.role,
      description: description ?? this.description,
      favoriteColor: favoriteColor ?? this.favoriteColor,
      skills: skills ?? this.skills,
    );
  }
}
