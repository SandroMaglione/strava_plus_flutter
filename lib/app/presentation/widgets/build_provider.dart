import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Wraps the widget with a list of [BlocProvider] that are built
/// in another [BuildContext] from the main widget
class BuildProvider extends StatelessWidget {
  /// List of [BlocProvider] inside [MultiBlocProvider]
  final List<BlocProvider> providers;

  /// Widget contained in the [MultiBlocProvider]
  final Widget Function(BuildContext) builder;

  /// Init parameters
  const BuildProvider({
    @required this.providers,
    @required this.builder,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: providers,
      child: Builder(
        builder: builder,
      ),
    );
  }
}
