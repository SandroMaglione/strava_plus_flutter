import 'package:mobile_polimi_project/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

/// [GetIt.instance] to reference and handle dependency injection generated objects
final getIt = GetIt.instance;

/// Entry point to initialize injectable-generated objects
@injectableInit
void configureInjectable() => $initGetIt(getIt);
