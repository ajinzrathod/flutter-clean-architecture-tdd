import 'package:dio/dio.dart';

// An abstract class in Dart is a class that cannot be instantiated directly.
// It is intended to serve as a base class for other classes.
// You can use abstract classes to define a common interface for a group of subclasses.
// Here's an explanation of why you might use an abstract class and what the difference is if you remove the abstract keyword.

abstract class DataState<T> {
  // https://stackoverflow.com/questions/50431055/what-is-the-difference-between-the-const-and-final-keywords-in-dart
  final T? data;
  final DioException? exception;

  const DataState({this.data, this.exception});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

// Concrete classes are Java classes that have code that implements all their methods, and method bodies are complete
class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException exception) : super(exception: exception);
}
