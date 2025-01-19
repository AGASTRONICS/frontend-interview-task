import 'package:feinterview/utils/constants/colors.dart';
import 'package:feinterview/utils/constants/image_strings.dart';
import 'package:feinterview/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/widgets/icons/stroll_svg_icon.dart';
import 'cubit/navigation_cubit.dart';
import 'features/personalization/screens/fe-interview-task/fe_interview_task.dart';

class StrollNavigationMenu extends StatelessWidget {
  const StrollNavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      StrollFrontendInterviewTask(),
      SizedBox(),
      SizedBox(),
      SizedBox(),
    ];

    return BlocProvider(
      create: (_) => NavigationCubit(),
      child: BlocBuilder<NavigationCubit, int>(
        builder: (context, selectedIndex) {
          return Scaffold(
            body: Stack(
              children: [
                screens[selectedIndex],
                Align(
                  alignment: Alignment.bottomCenter,
                  child: _CustomBottomNavBar(
                    selectedIndex: selectedIndex,
                    onItemSelected: (index) {
                      context.read<NavigationCubit>().selectIndex(index);
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const _CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: StrollSizes.xs, vertical: 8),
      height: 60,
      decoration: BoxDecoration(
        color: StrollColors.darkGrey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(svg: StrollImages.card, index: 0, notifications: 0),
          _buildNavItem(svg: StrollImages.bonfire, index: 1, notifications: 0),
          _buildNavItem(svg: StrollImages.chat, index: 2, notifications: 10),
          _buildNavItem(svg: StrollImages.user, index: 3, notifications: 0),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required String svg,
    required int index,
    int notifications = 0,
  }) {
    final isSelected = selectedIndex == index;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            InkWell(
              onTap: () => onItemSelected(index),
              child: strollSvgIcon(
                svg: svg,
                size: 28.0,
                padding: EdgeInsets.zero,
                applyImageRadius: false,
              ),
            ),
            Positioned(
              top: 4,
              right: 0,
              child: notifications == 0
                  ? SizedBox()
                  : Container(
                      padding: EdgeInsets.symmetric(horizontal: StrollSizes.xs),
                      decoration: BoxDecoration(
                        color: StrollColors.primary,
                        borderRadius: BorderRadius.circular(
                          StrollSizes.md,
                        ),
                      ),
                      child: Text(
                        notifications.toString(),
                        style: TextStyle(
                          fontSize: StrollSizes.sm,
                          color: StrollColors.dark,
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ],
    );
  }
}
