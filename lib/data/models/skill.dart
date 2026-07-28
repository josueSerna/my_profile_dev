import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Skill {
  final String name;
  final String description;
  final FaIconData icon;
  final Color color;

  const Skill({
    required this.name,
    required this.description,
    required this.icon,
    required this.color,
  });
}
