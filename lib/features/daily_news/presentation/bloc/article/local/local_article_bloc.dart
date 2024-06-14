import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/delete_article_use_case.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/get_saved_articles_use_case.dart';
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/save_article_use_case.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/bloc/article/local/local_article_event.dart';
import 'package:jai_swaminarayan/features/daily_news/presentation/bloc/article/local/local_article_state.dart';

class LocalArticleBloc extends Bloc<LocalArticleEvent, LocalArticleState> {
  final GetSavedArticleUseCase _getSavedArticleUseCase;
  final SaveArticleUseCase _saveArticleUseCase;
  final DeleteArticleUseCase _deleteArticleUseCase;

  LocalArticleBloc(this._getSavedArticleUseCase, this._saveArticleUseCase,
      this._deleteArticleUseCase)
      : super(const LocalArticlesLoadingState()) {
    on<GetSavedArticlesEvent>(onGetSavedArticlesEvent);
    on<DeleteArticleEvent>(onDeleteArticleEvent);
    on<SaveArticleEvent>(onSaveArticleEvent);
  }

  void onGetSavedArticlesEvent(
      GetSavedArticlesEvent event, Emitter<LocalArticleState> emit) async {
    final articles = await _getSavedArticleUseCase();
    emit(LocalArticlesDoneState(articles));
  }

  void onSaveArticleEvent(
      SaveArticleEvent saveArticle, Emitter<LocalArticleState> emit) async {
    await _saveArticleUseCase(params: saveArticle.article);
    final articles = await _getSavedArticleUseCase(params: saveArticle.article);
    emit(LocalArticlesDoneState(articles));
  }

  void onDeleteArticleEvent(
      DeleteArticleEvent deleteArticle, Emitter<LocalArticleState> emit) async {
    await _deleteArticleUseCase(params: deleteArticle.article);
    final articles =
        await _getSavedArticleUseCase(params: deleteArticle.article);
    emit(LocalArticlesDoneState(articles));
  }
}
