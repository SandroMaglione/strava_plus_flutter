import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/activity_list_cubit.dart';
import 'package:mobile_polimi_project/app/goal/presentation/views/calendar_view.dart';
import 'package:mobile_polimi_project/app/goal/presentation/views/profile_view.dart';
import 'package:mobile_polimi_project/app/goal/presentation/views/stats_view.dart';
import 'package:mobile_polimi_project/app/goal/presentation/views/summary_activity_view.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/widgets/build_provider.dart';
import 'package:mobile_polimi_project/injectable.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BuildProvider(
        providers: [
          BlocProvider<ActivityListCubit>(
            create: (context) => getIt<ActivityListCubit>()..init(),
          )
        ],
        builder: (context) {
          final theme = context.watch<ThemeCubit>().state;

          return Scaffold(
            body: _currentView,
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabIndex,
              backgroundColor: theme.customColorTheme.primaryColor,
              selectedItemColor: theme.customColorTheme.accentColor,
              unselectedItemColor:
                  theme.customColorTheme.primaryColorExtraLight,
              onTap: (index) => setState(() => tabIndex = index),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.ac_unit),
                  label: 'Goals',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.sanitizer_rounded),
                  label: 'Create',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.king_bed),
                  label: 'Activities',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.receipt_long_outlined),
                  label: 'Profile',
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget get _currentView {
    switch (tabIndex) {
      case 0:
        return const SummaryActivityView();
      case 1:
        return const CalendarView();
      case 2:
        return const StatsView();
      case 3:
        return const ProfileView();
      default:
        return const SummaryActivityView();
    }
  }
}
