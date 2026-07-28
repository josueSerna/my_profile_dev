import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_profile_dev/data/models/developer.dart';
import 'package:my_profile_dev/data/models/skill.dart';

class DeveloperNotifier extends Notifier<Developer> {
  @override
  Developer build() {
    return const Developer(
      name: 'Josué Serna',
      email: 'josueserna6@gmail.com',
      role: 'Flutter Developer',
      description:
          'Apasionado por Flutter, Clean Architecture y el desarrollo de aplicaciones multiplataforma.',

      favoriteColor: Colors.blue,

      skills: [
        Skill(
          name: 'Flutter',
          description:
              'Framework de Google para desarrollar aplicaciones multiplataforma.',
          icon: FontAwesomeIcons.flutter,
          color: Colors.blue,
        ),

        Skill(
          name: 'Dart',
          description: 'Lenguaje de programación usado por Flutter.',
          icon: FontAwesomeIcons.code,
          color: Colors.cyan,
        ),

        Skill(
          name: 'Firebase',
          description: 'Backend como servicio desarrollado por Google.',
          icon: FontAwesomeIcons.fire,
          color: Colors.orange,
        ),

        Skill(
          name: 'Git',
          description: 'Sistema de control de versiones.',
          icon: FontAwesomeIcons.gitAlt,
          color: Colors.red,
        ),

        Skill(
          name: 'Javascript',
          description: 'Lenguaje usado para crear sitios web',
          icon: FontAwesomeIcons.js,
          color: Colors.blueAccent,
        ),
      ],
    );
  }

  void changeFavoriteColor(Color color) {
    state = state.copyWith(favoriteColor: color);
  }
}

final developerProvider = NotifierProvider<DeveloperNotifier, Developer>(
  DeveloperNotifier.new,
);
