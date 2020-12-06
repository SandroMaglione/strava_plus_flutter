import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/athlete/presentation/widgets/weight_list.dart';
import 'package:mobile_polimi_project/app/presentation/controller/cubit/theme_cubit.dart';
import 'package:mobile_polimi_project/app/user/domain/entities/weight_data.dart';
import 'package:mobile_polimi_project/app/user/presentation/controllers/cubit/weight_cubit.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';

class WeightView extends StatelessWidget {
  const WeightView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeCubit>().state;

    return BlocBuilder<WeightCubit, AsyncState<IList<WeightData>>>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => const Center(child: const CircularProgressIndicator()),
        error: (failure) => Center(
          child: Text(failure.errorMessage),
        ),
        success: (weightList) => WeightList(weightList: weightList),
      ),
    );
  }
}
