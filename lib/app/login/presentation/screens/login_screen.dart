import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile_polimi_project/app/login/presentation/controllers/cubit/login_cubit.dart';
import 'package:mobile_polimi_project/core/routes/router.gr.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:auto_route/auto_route.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: _listenLogin,
          builder: (context, state) => state.maybeWhen(
            success: () => const Center(
              child: const CircularProgressIndicator(),
            ),
            loading: () => const Center(
              child: const CircularProgressIndicator(),
            ),
            missingAuth: () => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Missing authorization, click to retry'),
                  IconButton(
                    onPressed: () => _reload(context),
                    icon: const Icon(FontAwesomeIcons.reply),
                  ),
                ],
              ),
            ),
            orElse: () => WebView(
              initialUrl:
                  "https://www.strava.com/oauth/authorize?client_id=56765&response_type=code&redirect_uri=http://nuklex.com/&approval_prompt=force&scope=profile:read_all,activity:read_all",
              onPageStarted: (route) => _getAuthToken(context, route),
            ),
          ),
        ),
      ),
    );
  }

  void _getAuthToken(BuildContext context, String route) {
    context.read<LoginCubit>().getAuthToken(route);
  }

  void _listenLogin(BuildContext context, LoginState state) {
    if (state is SuccessLoginState) {
      context.navigator.pushAndRemoveUntil(
        Routes.HomeScreen,
        (route) => false,
      );
    }
  }

  void _reload(BuildContext context) {
    context.read<LoginCubit>().init();
  }
}
