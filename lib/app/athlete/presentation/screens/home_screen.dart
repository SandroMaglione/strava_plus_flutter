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
import 'package:mobile_polimi_project/app/login/presentation/controllers/cubit/login_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/widgets/build_provider.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/diet_cubit.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/sleep_cubit.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/water_cubit.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/weight_cubit.dart';
import 'package:mobile_polimi_project/core/routes/router.gr.dart';
import 'package:mobile_polimi_project/injectable.dart';
import 'package:auto_route/auto_route.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _tabIndex = 4;

  @override
  void initState() {
    super.initState();
    context.read<ActivityListCubit>().init();
  }

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return SafeArea(
      child: BlocListener<LoginCubit, LoginState>(
        listener: _listenLogin,
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
            floatingActionButton: FloatingActionButton(
              onPressed: () => setState(() => _tabIndex = 4),
              backgroundColor: _tabIndex == 4
                  ? theme.customColorTheme.primaryColor
                  : theme.customColorTheme.scaffoldBackgroundColorLight,
              elevation: _tabIndex == 4 ? 30 : 0,
              child: Icon(
                FontAwesomeIcons.strava,
                color: _tabIndex == 4
                    ? theme.customColorTheme.scaffoldBackgroundColorLight
                    : theme.customColorTheme.primaryColor,
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: AnimatedBottomNavigationBar(
              icons: [
                FontAwesomeIcons.weight,
                FontAwesomeIcons.utensils,
                FontAwesomeIcons.tint,
                FontAwesomeIcons.bed,
              ],
              activeIndex: _tabIndex,
              gapLocation: GapLocation.center,
              notchSmoothness: NotchSmoothness.verySmoothEdge,
              backgroundColor:
                  theme.customColorTheme.scaffoldBackgroundColorLight,
              elevation: 10,
              iconSize: 20,
              notchMargin: 5,
              splashColor: theme.customColorTheme.primaryColorExtraLight,
              activeColor: theme.customColorTheme.primaryColor,
              inactiveColor: theme.customColorTheme.scaffoldBackgroundColorDark,
              onTap: (index) => setState(() => _tabIndex = index),
            ),
          ),
        ),
      ),
    );
  }

  void _listenLogin(BuildContext context, LoginState state) {
    if (state is! SuccessLoginState) {
      context.navigator.pushAndRemoveUntil(
        Routes.LoginScreen,
        (route) => false,
      );
    }
  }

  Widget get _currentView {
    switch (_tabIndex) {
      case 0:
        return const WeightView();
      case 1:
        return const DietView();
      case 2:
        return const WaterView();
      case 3:
        return const SleepView();
      case 4:
        return const SummaryActivityView();
      default:
        return const SummaryActivityView();
    }
  }
}
