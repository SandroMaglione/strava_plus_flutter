import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_polimi_project/app/login/presentation/controllers/cubit/login_cubit.dart';
import 'package:mobile_polimi_project/app/presentation/widgets/build_provider.dart';
import 'package:mobile_polimi_project/core/routes/router.gr.dart';
import 'package:mobile_polimi_project/core/utils/async_state.dart';
import 'package:mobile_polimi_project/injectable.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:auto_route/auto_route.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BuildProvider(
        providers: [
          BlocProvider<LoginCubit>(
            create: (context) => getIt<LoginCubit>()..init(),
          )
        ],
        builder: (context) => Scaffold(
          body: BlocConsumer<LoginCubit, AsyncState<Unit>>(
            listener: _listenLogin,
            builder: (context, state) => state.maybeWhen(
              success: (_) => const Text("Success"),
              orElse: () => WebView(
                initialUrl:
                    "https://www.strava.com/oauth/authorize?client_id=56765&response_type=code&redirect_uri=http://nuklex.com/&approval_prompt=force&scope=profile:read_all,activity:read_all",
                onPageStarted: (route) => _getAuthToken(context, route),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _getAuthToken(BuildContext context, String route) {
    context.read<LoginCubit>().getAuthToken(route);
  }

  void _listenLogin(BuildContext context, AsyncState<Unit> state) {
    if (state is SuccessAsyncState<Unit>) {
      context.navigator.pushAndRemoveUntil(
        Routes.HomeScreen,
        (route) => false,
      );
    }
  }
}
