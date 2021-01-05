import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/login/presentation/controllers/cubit/login_cubit.dart';
import 'package:mobile_polimi_project/core/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocListener<LoginCubit, LoginState>(
          listener: _listenLogin,
          child: const Center(
            child: const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  void _listenLogin(BuildContext context, LoginState state) {
    if (state is SuccessLoginState) {
      context.navigator.pushAndRemoveUntil(
        Routes.HomeScreen,
        (route) => false,
      );
    } else if (state is ErrorLoginState) {
      context.navigator.pushAndRemoveUntil(
        Routes.LoginScreen,
        (route) => false,
      );
    }
  }
}
