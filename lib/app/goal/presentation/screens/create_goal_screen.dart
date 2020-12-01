import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/goal/data/models/user_goal_model.dart';
import 'package:mobile_polimi_project/app/goal/presentation/controllers/cubit/create_goal_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/widgets/build_provider.dart';
import 'package:mobile_polimi_project/core/enums/goal_priority.dart';
import 'package:mobile_polimi_project/injectable.dart';

class CreateGoalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BuildProvider(
        providers: [
          BlocProvider<CreateGoalCubit>(
            create: (context) => getIt<CreateGoalCubit>(),
          )
        ],
        builder: (context) => Scaffold(
          body: BlocBuilder<CreateGoalCubit, UserGoalModel>(
            builder: (context, state) => SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    onChanged: (value) =>
                        context.read<CreateGoalCubit>().changeName(value),
                  ),
                  DatePicker(
                    DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectionColor: Colors.black,
                    selectedTextColor: Colors.white,
                    onDateChange: (date) =>
                        context.read<CreateGoalCubit>().selectStartDate(date),
                  ),
                  DatePicker(
                    state.startDate,
                    initialSelectedDate: state.startDate,
                    selectionColor: Colors.black,
                    selectedTextColor: Colors.white,
                    onDateChange: (date) =>
                        context.read<CreateGoalCubit>().selectEndDate(date),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () => context
                            .read<CreateGoalCubit>()
                            .selectPriority(GoalPriority.high),
                        child: const Chip(
                          label: const Text('High'),
                        ),
                      ),
                      InkWell(
                        onTap: () => context
                            .read<CreateGoalCubit>()
                            .selectPriority(GoalPriority.medium),
                        child: const Chip(
                          label: const Text('Medium'),
                        ),
                      ),
                      InkWell(
                        onTap: () => context
                            .read<CreateGoalCubit>()
                            .selectPriority(GoalPriority.low),
                        child: const Chip(
                          label: const Text('Low'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () => context
                            .read<CreateGoalCubit>()
                            .selectColor(Colors.blueAccent),
                        child: const Chip(
                          backgroundColor: Colors.blueAccent,
                          label: const Text('Blue'),
                        ),
                      ),
                      InkWell(
                        onTap: () => context
                            .read<CreateGoalCubit>()
                            .selectColor(Colors.redAccent),
                        child: const Chip(
                          backgroundColor: Colors.redAccent,
                          label: const Text('Red'),
                        ),
                      ),
                      InkWell(
                        onTap: () => context
                            .read<CreateGoalCubit>()
                            .selectColor(Colors.yellowAccent),
                        child: const Chip(
                          backgroundColor: Colors.yellowAccent,
                          label: const Text('Yellow'),
                        ),
                      ),
                    ],
                  ),
                  // Build Metrics
                  Column(
                    children: [
                      OutlineButton.icon(
                        onPressed: () =>
                            context.read<CreateGoalCubit>().addFinalMetric(),
                        icon: const Icon(Icons.add),
                        label: const Text('Add'),
                      ),
                      Card(),
                    ],
                  ),
                  RaisedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.save),
                    label: const Text('Create goal'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
