// Mocks generated by Mockito 5.4.4 from annotations
// in jai_swaminarayan/test/helpers/daily_news_mock_generate_test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dio/dio.dart' as _i7;
import 'package:jai_swaminarayan/core/resources/data_state.dart' as _i6;
import 'package:jai_swaminarayan/features/daily_news/data/data_sources/local/app_database.dart'
    as _i10;
import 'package:jai_swaminarayan/features/daily_news/data/data_sources/local/DAO/article_dao.dart'
    as _i3;
import 'package:jai_swaminarayan/features/daily_news/data/data_sources/remote/remote_news_api_service.dart'
    as _i8;
import 'package:jai_swaminarayan/features/daily_news/data/models/article_model.dart'
    as _i9;
import 'package:jai_swaminarayan/features/daily_news/domain/entities/article_entity.dart'
    as _i12;
import 'package:jai_swaminarayan/features/daily_news/domain/repository/article_repository.dart'
    as _i11;
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/delete_article_use_case.dart'
    as _i13;
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/get_article_use_case.dart'
    as _i15;
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/get_saved_articles_use_case.dart'
    as _i16;
import 'package:jai_swaminarayan/features/daily_news/domain/usecases/article/save_article_use_case.dart'
    as _i14;
import 'package:mockito/mockito.dart' as _i1;
import 'package:retrofit/retrofit.dart' as _i2;
import 'package:sqflite/sqflite.dart' as _i5;

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

class _FakeHttpResponse_0<T> extends _i1.SmartFake
    implements _i2.HttpResponse<T> {
  _FakeHttpResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeArticleDao_1 extends _i1.SmartFake implements _i3.ArticleDao {
  _FakeArticleDao_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeStreamController_2<T> extends _i1.SmartFake
    implements _i4.StreamController<T> {
  _FakeStreamController_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDatabaseExecutor_3 extends _i1.SmartFake
    implements _i5.DatabaseExecutor {
  _FakeDatabaseExecutor_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDataState_4<T> extends _i1.SmartFake implements _i6.DataState<T> {
  _FakeDataState_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeBaseOptions_5 extends _i1.SmartFake implements _i7.BaseOptions {
  _FakeBaseOptions_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHttpClientAdapter_6 extends _i1.SmartFake
    implements _i7.HttpClientAdapter {
  _FakeHttpClientAdapter_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTransformer_7 extends _i1.SmartFake implements _i7.Transformer {
  _FakeTransformer_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInterceptors_8 extends _i1.SmartFake implements _i7.Interceptors {
  _FakeInterceptors_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_9<T1> extends _i1.SmartFake implements _i7.Response<T1> {
  _FakeResponse_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [RemoteNewsApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoteNewsApiService extends _i1.Mock
    implements _i8.RemoteNewsApiService {
  MockRemoteNewsApiService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.HttpResponse<List<_i9.ArticleModel>>> getNewsArticles() =>
      (super.noSuchMethod(
        Invocation.method(
          #getNewsArticles,
          [],
        ),
        returnValue: _i4.Future<_i2.HttpResponse<List<_i9.ArticleModel>>>.value(
            _FakeHttpResponse_0<List<_i9.ArticleModel>>(
          this,
          Invocation.method(
            #getNewsArticles,
            [],
          ),
        )),
      ) as _i4.Future<_i2.HttpResponse<List<_i9.ArticleModel>>>);
}

/// A class which mocks [AppDatabase].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppDatabase extends _i1.Mock implements _i10.AppDatabase {
  MockAppDatabase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.ArticleDao get ArticleDAO => (super.noSuchMethod(
        Invocation.getter(#ArticleDAO),
        returnValue: _FakeArticleDao_1(
          this,
          Invocation.getter(#ArticleDAO),
        ),
      ) as _i3.ArticleDao);

  @override
  _i4.StreamController<String> get changeListener => (super.noSuchMethod(
        Invocation.getter(#changeListener),
        returnValue: _FakeStreamController_2<String>(
          this,
          Invocation.getter(#changeListener),
        ),
      ) as _i4.StreamController<String>);

  @override
  set changeListener(_i4.StreamController<String>? _changeListener) =>
      super.noSuchMethod(
        Invocation.setter(
          #changeListener,
          _changeListener,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.DatabaseExecutor get database => (super.noSuchMethod(
        Invocation.getter(#database),
        returnValue: _FakeDatabaseExecutor_3(
          this,
          Invocation.getter(#database),
        ),
      ) as _i5.DatabaseExecutor);

  @override
  set database(_i5.DatabaseExecutor? _database) => super.noSuchMethod(
        Invocation.setter(
          #database,
          _database,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [ArticleRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockArticleRepository extends _i1.Mock implements _i11.ArticleRepository {
  MockArticleRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i6.DataState<List<_i12.ArticleEntity>>> getNewsArticles() =>
      (super.noSuchMethod(
        Invocation.method(
          #getNewsArticles,
          [],
        ),
        returnValue: _i4.Future<_i6.DataState<List<_i12.ArticleEntity>>>.value(
            _FakeDataState_4<List<_i12.ArticleEntity>>(
          this,
          Invocation.method(
            #getNewsArticles,
            [],
          ),
        )),
      ) as _i4.Future<_i6.DataState<List<_i12.ArticleEntity>>>);

  @override
  _i4.Future<List<_i12.ArticleEntity>> getSavedArticles() =>
      (super.noSuchMethod(
        Invocation.method(
          #getSavedArticles,
          [],
        ),
        returnValue:
            _i4.Future<List<_i12.ArticleEntity>>.value(<_i12.ArticleEntity>[]),
      ) as _i4.Future<List<_i12.ArticleEntity>>);

  @override
  _i4.Future<void> saveArticle(_i12.ArticleEntity? article) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveArticle,
          [article],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);

  @override
  _i4.Future<void> deleteArticle(_i12.ArticleEntity? article) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteArticle,
          [article],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [DeleteArticleUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeleteArticleUseCase extends _i1.Mock
    implements _i13.DeleteArticleUseCase {
  MockDeleteArticleUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<void> call({_i12.ArticleEntity? params}) => (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
          {#params: params},
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [SaveArticleUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockSaveArticleUseCase extends _i1.Mock
    implements _i14.SaveArticleUseCase {
  MockSaveArticleUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<void> call({_i12.ArticleEntity? params}) => (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
          {#params: params},
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
}

/// A class which mocks [GetArticleUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetArticleUseCase extends _i1.Mock implements _i15.GetArticleUseCase {
  MockGetArticleUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i6.DataState<List<_i12.ArticleEntity>>> call({dynamic params}) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
          {#params: params},
        ),
        returnValue: _i4.Future<_i6.DataState<List<_i12.ArticleEntity>>>.value(
            _FakeDataState_4<List<_i12.ArticleEntity>>(
          this,
          Invocation.method(
            #call,
            [],
            {#params: params},
          ),
        )),
      ) as _i4.Future<_i6.DataState<List<_i12.ArticleEntity>>>);
}

/// A class which mocks [GetSavedArticleUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetSavedArticleUseCase extends _i1.Mock
    implements _i16.GetSavedArticleUseCase {
  MockGetSavedArticleUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<List<_i12.ArticleEntity>> call({dynamic params}) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
          {#params: params},
        ),
        returnValue:
            _i4.Future<List<_i12.ArticleEntity>>.value(<_i12.ArticleEntity>[]),
      ) as _i4.Future<List<_i12.ArticleEntity>>);
}

/// A class which mocks [Dio].
///
/// See the documentation for Mockito's code generation for more information.
class MockDio extends _i1.Mock implements _i7.Dio {
  @override
  _i7.BaseOptions get options => (super.noSuchMethod(
        Invocation.getter(#options),
        returnValue: _FakeBaseOptions_5(
          this,
          Invocation.getter(#options),
        ),
        returnValueForMissingStub: _FakeBaseOptions_5(
          this,
          Invocation.getter(#options),
        ),
      ) as _i7.BaseOptions);

  @override
  set options(_i7.BaseOptions? _options) => super.noSuchMethod(
        Invocation.setter(
          #options,
          _options,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.HttpClientAdapter get httpClientAdapter => (super.noSuchMethod(
        Invocation.getter(#httpClientAdapter),
        returnValue: _FakeHttpClientAdapter_6(
          this,
          Invocation.getter(#httpClientAdapter),
        ),
        returnValueForMissingStub: _FakeHttpClientAdapter_6(
          this,
          Invocation.getter(#httpClientAdapter),
        ),
      ) as _i7.HttpClientAdapter);

  @override
  set httpClientAdapter(_i7.HttpClientAdapter? _httpClientAdapter) =>
      super.noSuchMethod(
        Invocation.setter(
          #httpClientAdapter,
          _httpClientAdapter,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.Transformer get transformer => (super.noSuchMethod(
        Invocation.getter(#transformer),
        returnValue: _FakeTransformer_7(
          this,
          Invocation.getter(#transformer),
        ),
        returnValueForMissingStub: _FakeTransformer_7(
          this,
          Invocation.getter(#transformer),
        ),
      ) as _i7.Transformer);

  @override
  set transformer(_i7.Transformer? _transformer) => super.noSuchMethod(
        Invocation.setter(
          #transformer,
          _transformer,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.Interceptors get interceptors => (super.noSuchMethod(
        Invocation.getter(#interceptors),
        returnValue: _FakeInterceptors_8(
          this,
          Invocation.getter(#interceptors),
        ),
        returnValueForMissingStub: _FakeInterceptors_8(
          this,
          Invocation.getter(#interceptors),
        ),
      ) as _i7.Interceptors);

  @override
  void close({bool? force = false}) => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
          {#force: force},
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Future<_i7.Response<T>> head<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i7.Options? options,
    _i7.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #head,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #head,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<T>>);

  @override
  _i4.Future<_i7.Response<T>> headUri<T>(
    Uri? uri, {
    Object? data,
    _i7.Options? options,
    _i7.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #headUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #headUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #headUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<T>>);

  @override
  _i4.Future<_i7.Response<T>> get<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i7.Options? options,
    _i7.CancelToken? cancelToken,
    _i7.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #get,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #get,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<T>>);

  @override
  _i4.Future<_i7.Response<T>> getUri<T>(
    Uri? uri, {
    Object? data,
    _i7.Options? options,
    _i7.CancelToken? cancelToken,
    _i7.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #getUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #getUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<T>>);

  @override
  _i4.Future<_i7.Response<T>> post<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i7.Options? options,
    _i7.CancelToken? cancelToken,
    _i7.ProgressCallback? onSendProgress,
    _i7.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #post,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #post,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<T>>);

  @override
  _i4.Future<_i7.Response<T>> postUri<T>(
    Uri? uri, {
    Object? data,
    _i7.Options? options,
    _i7.CancelToken? cancelToken,
    _i7.ProgressCallback? onSendProgress,
    _i7.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #postUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #postUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #postUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<T>>);

  @override
  _i4.Future<_i7.Response<T>> put<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i7.Options? options,
    _i7.CancelToken? cancelToken,
    _i7.ProgressCallback? onSendProgress,
    _i7.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #put,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #put,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<T>>);

  @override
  _i4.Future<_i7.Response<T>> putUri<T>(
    Uri? uri, {
    Object? data,
    _i7.Options? options,
    _i7.CancelToken? cancelToken,
    _i7.ProgressCallback? onSendProgress,
    _i7.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #putUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #putUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #putUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<T>>);

  @override
  _i4.Future<_i7.Response<T>> patch<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i7.Options? options,
    _i7.CancelToken? cancelToken,
    _i7.ProgressCallback? onSendProgress,
    _i7.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #patch,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #patch,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<T>>);

  @override
  _i4.Future<_i7.Response<T>> patchUri<T>(
    Uri? uri, {
    Object? data,
    _i7.Options? options,
    _i7.CancelToken? cancelToken,
    _i7.ProgressCallback? onSendProgress,
    _i7.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patchUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #patchUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #patchUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<T>>);

  @override
  _i4.Future<_i7.Response<T>> delete<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i7.Options? options,
    _i7.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #delete,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #delete,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<T>>);

  @override
  _i4.Future<_i7.Response<T>> deleteUri<T>(
    Uri? uri, {
    Object? data,
    _i7.Options? options,
    _i7.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #deleteUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #deleteUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<T>>);

  @override
  _i4.Future<_i7.Response<dynamic>> download(
    String? urlPath,
    dynamic savePath, {
    _i7.ProgressCallback? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    _i7.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    Object? data,
    _i7.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #download,
          [
            urlPath,
            savePath,
          ],
          {
            #onReceiveProgress: onReceiveProgress,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options,
          },
        ),
        returnValue:
            _i4.Future<_i7.Response<dynamic>>.value(_FakeResponse_9<dynamic>(
          this,
          Invocation.method(
            #download,
            [
              urlPath,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<dynamic>>.value(_FakeResponse_9<dynamic>(
          this,
          Invocation.method(
            #download,
            [
              urlPath,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<dynamic>>);

  @override
  _i4.Future<_i7.Response<dynamic>> downloadUri(
    Uri? uri,
    dynamic savePath, {
    _i7.ProgressCallback? onReceiveProgress,
    _i7.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    Object? data,
    _i7.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #downloadUri,
          [
            uri,
            savePath,
          ],
          {
            #onReceiveProgress: onReceiveProgress,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options,
          },
        ),
        returnValue:
            _i4.Future<_i7.Response<dynamic>>.value(_FakeResponse_9<dynamic>(
          this,
          Invocation.method(
            #downloadUri,
            [
              uri,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<dynamic>>.value(_FakeResponse_9<dynamic>(
          this,
          Invocation.method(
            #downloadUri,
            [
              uri,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<dynamic>>);

  @override
  _i4.Future<_i7.Response<T>> request<T>(
    String? url, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i7.CancelToken? cancelToken,
    _i7.Options? options,
    _i7.ProgressCallback? onSendProgress,
    _i7.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #request,
          [url],
          {
            #data: data,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #request,
            [url],
            {
              #data: data,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #request,
            [url],
            {
              #data: data,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<T>>);

  @override
  _i4.Future<_i7.Response<T>> requestUri<T>(
    Uri? uri, {
    Object? data,
    _i7.CancelToken? cancelToken,
    _i7.Options? options,
    _i7.ProgressCallback? onSendProgress,
    _i7.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #requestUri,
          [uri],
          {
            #data: data,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #requestUri,
            [uri],
            {
              #data: data,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #requestUri,
            [uri],
            {
              #data: data,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i4.Future<_i7.Response<T>>);

  @override
  _i4.Future<_i7.Response<T>> fetch<T>(_i7.RequestOptions? requestOptions) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetch,
          [requestOptions],
        ),
        returnValue: _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #fetch,
            [requestOptions],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i7.Response<T>>.value(_FakeResponse_9<T>(
          this,
          Invocation.method(
            #fetch,
            [requestOptions],
          ),
        )),
      ) as _i4.Future<_i7.Response<T>>);
}
