import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_profile_dev/providers/developer_provider.dart';

class ColorSelector extends ConsumerWidget {
  const ColorSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = [
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.purple,
      Colors.red,
      Colors.teal,
    ];
    return Wrap(
      spacing: 15,
      children: colors.map((color) {
        return InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: () {
            ref.read(developerProvider.notifier).changeFavoriteColor(color);
          },
          child: CircleAvatar(radius: 22, backgroundColor: color),
        );
      }).toList(),
    );
  }
}
