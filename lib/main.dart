import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jai_swaminarayan/config/theme/app_theme.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/pages/home/daily_news_page.dart';
import 'package:jai_swaminarayan/injection_container.dart';

import 'config/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (context) => sl()..add(const GetArticles()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme(),
        onGenerateRoute: AppRoutes.onGenerateRoutes,
        home: const DailyNews(),
      ),
    );
  }
}
