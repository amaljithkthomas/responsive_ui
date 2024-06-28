import 'package:flutter/material.dart';
import 'package:responsive_ui/constants/colors.dart';
import 'package:responsive_ui/screens/widgets/project_card.dart';

class CustomTabBar extends StatelessWidget {
  final TabController tabController;
  const CustomTabBar({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.36,
      decoration: BoxDecoration(
        color: AppColors.ebony,
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TabBar(
        controller: tabController,
        tabs: const [
          Tab(
            text: 'All',
          ),
          Tab(
            text: 'Apps',
          ),
          Tab(
            text: 'Branding',
          ),
          Tab(
            text: 'UI/UX',
          )
        ],
        indicator: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(20),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.grey,
        labelPadding: const EdgeInsets.symmetric(horizontal: 20),
        dividerColor: Colors.transparent,
      ),
    );
  }
}

class CustomTabBarView extends StatelessWidget {
  final TabController tabController;
  const CustomTabBarView({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return TabBarView(
      controller: tabController,
      children: [
        AllProjects(size: size),
        AllProjects(size: size),
        AllProjects(size: size),
        AllProjects(size: size),
      ],
    );
  }
}

class AllProjects extends StatelessWidget {
  final Size size;
  const AllProjects({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.10),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1 / 1),
          children: const [
            ProjectCard(),
            ProjectCard(),
            ProjectCard(),
            ProjectCard(),
          ],
        ),
      ),
    );
  }
}
