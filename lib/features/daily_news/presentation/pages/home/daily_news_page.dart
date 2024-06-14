import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jai_swaminarayan/env.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/bloc/article/remote/remote_article_bloc.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/widgets/article_tile_widget.dart';
import 'package:logger/logger.dart';

import '../../../domain/entities/article_entity.dart';

class DailyNews extends StatelessWidget {
  const DailyNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(context),
      body: _buildBody(),
    );
  }

  _buildAppbar(BuildContext context) {
    return AppBar(
      title: Text(
        AppEnvironment.title,
        style: const TextStyle(color: Colors.black),
      ),
      actions: [
        GestureDetector(
          onTap: () => _onShowSavedArticlesViewTapped(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: Icon(Icons.bookmark, color: Colors.black),
          ),
        ),
      ],
    );
  }

  _buildBody() {
    var logger = Logger();
    return BlocBuilder<RemoteArticlesBloc, RemoteArticlesState>(
      builder: (_, state) {
        if (state is RemoteArticlesLoading) {
          logger.i("@@Loading...");
          return const Center(child: CupertinoActivityIndicator());
        }
        if (state is RemoteArticlesException) {
          logger.e("@@Error log: ", error: state.exception!);
          return const Center(child: Icon(Icons.refresh));
        }
        if (state is RemoteArticlesDone) {
          logger.i(state.articles!);
          return ListView.builder(
            itemBuilder: (context, index) {
              return ArticleTileWidget(
                article: state.articles![index],
                onArticlePressed: (article) {
                  _onArticlePressed(context, article);
                },
              );
            },
            itemCount: state.articles!.length,
          );
        }
        return const SizedBox();
      },
    );
  }

  void _onArticlePressed(BuildContext context, ArticleEntity article) {
    Navigator.pushNamed(context, '/ArticleDetail', arguments: article);
  }

  void _onShowSavedArticlesViewTapped(BuildContext context) {
    Navigator.pushNamed(context, '/SavedArticles');
  }
}
