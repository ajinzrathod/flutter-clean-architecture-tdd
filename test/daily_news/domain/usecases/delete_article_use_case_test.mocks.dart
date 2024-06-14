// Mocks generated by Mockito 5.4.4 from annotations
// in jai_swaminarayan/test/daily_news/domain/usecases/delete_article_use_case_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:jai_swaminarayan/core/resources/data_state.dart' as _i2;
import 'package:jai_swaminarayan/features/daily_news/domain/entities/article_entity.dart'
    as _i5;
import 'package:jai_swaminarayan/features/daily_news/domain/repository/article_repository.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDataState_0<T> extends _i1.SmartFake implements _i2.DataState<T> {
  _FakeDataState_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ArticleRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockArticleRepository extends _i1.Mock implements _i3.ArticleRepository {
  MockArticleRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.DataState<List<_i5.ArticleEntity>>> getNewsArticles() =>
      (super.noSuchMethod(
        Invocation.method(
          #getNewsArticles,
          [],
        ),
        returnValue: _i4.Future<_i2.DataState<List<_i5.ArticleEntity>>>.value(
            _FakeDataState_0<List<_i5.ArticleEntity>>(
          this,
          Invocation.method(
            #getNewsArticles,
            [],
          ),
        )),
      ) as _i4.Future<_i2.DataState<List<_i5.ArticleEntity>>>);

  @override
  _i4.Future<List<_i5.ArticleEntity>> getSavedArticles() => (super.noSuchMethod(
        Invocation.method(
          #getSavedArticles,
          [],
        ),
        returnValue:
            _i4.Future<List<_i5.ArticleEntity>>.value(<_i5.ArticleEntity>[]),
      ) as _i4.Future<List<_i5.ArticleEntity>>);

  @override
  _i4.Future<void> saveArticle(_i5.ArticleEntity? article) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveArticle,
          [article],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);

  @override
  _i4.Future<void> deleteArticle(_i5.ArticleEntity? article) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteArticle,
          [article],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}