import 'package:flutter/material.dart';
import 'package:weatherapp/constant/stayle.dart';
import 'package:weatherapp/domain/presentation/widgets/custom_search_icon.dart';
import 'package:weatherapp/domain/presentation/widgets/theme_toggle_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });

  // varibles

  final String title;
  final double sizeIcon = 23;

  // Build UI

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // App Bar Text Icon Button
        Text(
          title,
          style: AppTextStyle.heading,
        ),
        const Spacer(flex: 1),
        // Search Icon Button
        SearchIcon(sizeIcon: sizeIcon),
        ThemeToggleButton(
          sizeIcon: sizeIcon,
        ),
      ],
    );
  }
}
