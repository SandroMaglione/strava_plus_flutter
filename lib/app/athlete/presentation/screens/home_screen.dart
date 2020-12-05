import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/activity_list_cubit.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/views/diet_view.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/views/weight_view.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/views/sleep_view.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/views/summary_activity_view.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/views/water_view.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/widgets/build_provider.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/diet_cubit.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/sleep_cubit.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/water_cubit.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/weight_cubit.dart';
import 'package:mobile_polimi_project/injectable.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _tabIndex = 2;

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
          BlocProvider<DietCubit>(
            create: (context) => getIt<DietCubit>()..init(),
          ),
          BlocProvider<WaterCubit>(
            create: (context) => getIt<WaterCubit>()..init(),
          ),
        ],
        builder: (context) => Scaffold(
          body: _currentView,
          bottomNavigationBar: AnimatedBottomNavigationBar(
            icons: [
              FontAwesomeIcons.weight,
              FontAwesomeIcons.utensils,
              FontAwesomeIcons.strava,
              FontAwesomeIcons.tint,
              FontAwesomeIcons.bed,
            ],
            activeIndex: _tabIndex,
            gapLocation: GapLocation.none,
            notchSmoothness: NotchSmoothness.verySmoothEdge,
            leftCornerRadius: 32,
            rightCornerRadius: 32,
            backgroundColor: theme.customColorTheme.primaryColor,
            splashColor: theme.customColorTheme.primaryColorExtraLight,
            activeColor: theme.customColorTheme.scaffoldBackgroundColorLight,
            inactiveColor: theme.customColorTheme.primaryColorLight,
            onTap: (index) => setState(() => _tabIndex = index),
          ),
        ),
      ),
    );
  }

  Widget get _currentView {
    switch (_tabIndex) {
      case 0:
        return const WeightView();
      case 1:
        return const DietView();
      case 2:
        return const SummaryActivityView();
      case 3:
        return const WaterView();
      case 4:
        return const SleepView();
      default:
        return const SummaryActivityView();
    }
  }
}
