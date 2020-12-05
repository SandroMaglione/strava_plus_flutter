import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/activity_list_cubit.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/views/calendar_view.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/views/profile_view.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/views/stats_view.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/views/summary_activity_view.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/widgets/build_provider.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/sleep_cubit.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/weight_cubit.dart';
import 'package:mobile_polimi_project/injectable.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<ActivityListCubit>().init();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return SafeArea(
      child: BuildProvider(
        providers: [
          BlocProvider<WeightCubit>(
            create: (context) => getIt<WeightCubit>()..init(),
          ),
          BlocProvider<SleepCubit>(
            create: (context) => getIt<SleepCubit>()..init(),
          ),
        ],
        builder: (context) => Scaffold(
          body: _currentView,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabIndex,
            backgroundColor: theme.customColorTheme.primaryColor,
            selectedItemColor: theme.customColorTheme.accentColor,
            unselectedItemColor: theme.customColorTheme.primaryColorExtraLight,
            onTap: (index) => setState(() => tabIndex = index),
            items: [
              const BottomNavigationBarItem(
                icon: const Icon(Icons.ac_unit),
                label: 'Goals',
              ),
              const BottomNavigationBarItem(
                icon: const Icon(Icons.sanitizer_rounded),
                label: 'Create',
              ),
              const BottomNavigationBarItem(
                icon: const Icon(Icons.king_bed),
                label: 'Activities',
              ),
              const BottomNavigationBarItem(
                icon: const Icon(Icons.receipt_long_outlined),
                label: 'Profile',
              ),
            ],
          ),
        ),
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
