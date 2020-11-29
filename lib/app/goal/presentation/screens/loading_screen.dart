import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/login/presentation/controllers/cubit/login_cubit.dart';
import 'package:mobile_polimi_project/core/routes/router.gr.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';
import 'package:auto_route/auto_route.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocListener<LoginCubit, AsyncState<Unit>>(
          listener: _listenLogin,
          child: const Center(
            child: const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  void _listenLogin(BuildContext context, AsyncState<Unit> state) {
    if (state is SuccessAsyncState<Unit>) {
      context.navigator.pushAndRemoveUntil(
        Routes.HomeScreen,
        (route) => false,
      );
    } else if (state is ErrorAsyncState<Unit>) {
      context.navigator.pushAndRemoveUntil(
        Routes.LoginScreen,
        (route) => false,
      );
    }
  }
}
