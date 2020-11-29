import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/activity/domain/entities/summary_activity.dart';
import 'package:mobile_polimi_project/app/activity/presentation/controllers/cubit/activity_list_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/widgets/build_provider.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';
import 'package:mobile_polimi_project/injectable.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BuildProvider(
        providers: [
          BlocProvider<ActivityListCubit>(
            create: (context) => getIt<ActivityListCubit>()..init(),
          )
        ],
        builder: (context) => Scaffold(
          body: BlocBuilder<ActivityListCubit,
              AsyncState<IList<SummaryActivity>>>(
            builder: (context, state) => state.maybeWhen(
              orElse: () => const CircularProgressIndicator(),
              success: (activityList) => Column(
                children: [
                  ...activityList
                      .map(
                        (a) => Text(a.name),
                      )
                      .toIterable(),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
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
        ),
      ),
    );
  }
}
