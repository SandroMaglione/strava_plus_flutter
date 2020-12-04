import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/weight_data.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/weight_cubit.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';
import 'package:mobile_polimi_project/core/extensions/ilist_user_data_extension.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return BlocBuilder<WeightCubit, AsyncState<IList<WeightData>>>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const Center(child: const CircularProgressIndicator()),
        error: (failure) => Center(
          child: Text(failure.errorMessage),
        ),
        success: (weightList) => SingleChildScrollView(
          child: Column(
            children: [
              ...weightList
                  .map(
                    (a) => Text('${a.value}kg - ${a.dateTimeFormat}'),
                  )
                  .toIterable(),
              SingleChildScrollView(
                padding: const EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(11, (index) => 70 + (index * 0.1)).map(
                      (e) => InkWell(
                        onTap: () => _updateWeight(context, e),
                        child: Chip(
                          label: Text('${e.toStringAsFixed(1)}kg'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Text('Avg'),
              Text('${weightList.average()}'),
              const Text('Max'),
              Text('${weightList.max()}'),
              const Text('Min'),
              Text('${weightList.min()}'),
            ],
          ),
        ),
      ),
    );
  }

  void _updateWeight(BuildContext context, double weight) {
    context.read<WeightCubit>().updateWeight(weight);
  }
}
