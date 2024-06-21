import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jai_swaminarayan/core/resources/data_state.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/get_article_use_case.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/bloc/article/remote/remote_article_event.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/bloc/article/remote/remote_article_state.dart';

class RemoteArticlesBloc
    extends Bloc<RemoteArticlesEvent, RemoteArticlesState> {
  final GetArticleUseCase _getArticlesUseCase;

  RemoteArticlesBloc(this._getArticlesUseCase)
      : super(const RemoteArticlesLoading()) {
    on<GetArticles>(onGetArticles);
  }

  void onGetArticles(
      GetArticles event, Emitter<RemoteArticlesState> emit) async {
    emit(const RemoteArticlesLoading());
    final dataState = await _getArticlesUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RemoteArticlesDone(dataState.data!));
    }

    if (dataState is DataSuccess && dataState.data!.isEmpty) {
      emit(const RemoteArticlesDone([]));
    }

    if (dataState is DataFailed) {
      emit(RemoteArticlesException(dataState.exception!));
    }
  }
}
