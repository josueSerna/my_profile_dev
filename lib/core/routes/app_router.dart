import 'package:go_router/go_router.dart';
import 'package:my_profile_dev/data/models/skill.dart';
import 'package:my_profile_dev/presentation/screen/home_screen.dart';
import 'package:my_profile_dev/presentation/screen/skill_detail_screen.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (_, _) => const HomeScreen()),
      GoRoute(
        path: '/skill',
        builder: (_, state) {
          final skill = state.extra as Skill;
          return SkillDetailScreen(skill: skill);
        },
      ),
    ],
  );
}
