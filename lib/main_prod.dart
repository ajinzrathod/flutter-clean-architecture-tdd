import 'package:flutter/cupertino.dart';
import 'package:jai_swaminarayan/env.dart';

import 'injection_container.dart';
import 'main.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppEnvironment.setUpEnv(Environment.prod);
  await initializeDependencies();
  runApp(const MyApp());
}
