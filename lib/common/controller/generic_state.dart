import 'package:flutter/cupertino.dart';

sealed class GenericState<T> {
  ///State is either [SuccessState]
  bool get isSuccess {
    return this is SuccessState;
  }

  bool get isError {
    return this is ErrorState;
  }

  ///State is either [LoadingState] or [InitialState]
  bool get isLoading {
    return this is InitialState || this is LoadingState;
  }

  ///State is not [SuccessState]
  bool get isNotSuccess => !isSuccess;

  ///State not [ErrorState]
  bool get isNotError => !isError;

  ///State is neither [LoadingState] nor [InitialState]
  bool get isNotLoading => !isLoading;

  ///If [SuccessState] returns its data,
  ///If [LoadingState] or [ErrorState] returns data if there is some [cacheData] saved,
  ///Else return null
  T? get dataOrNull {
    final state = this;
    return switch (state) {
      InitialState() => null,
      SuccessState() => state.data,
      ErrorState() => state.cacheData,
      LoadingState() => state.cacheData,
    };
  }

  ///If [SuccessState] returns actual data,
  ///If [LoadingState] or [ErrorState] returns actual data if there is some [cacheData] saved,
  ///Else return [alternative]
  T dataOr(T alternative) {
    return dataOrNull ?? alternative;
  }

  ///If [SuccessState] returns output of [dataMap],
  ///If [LoadingState] or [ErrorState] returns output of [dataMap] if there is some [cacheData] saved,
  ///Else return [alternative]
  K dataInKOr<K>({
    required K Function(T) onData,
    required K alternative,
  }) {
    final data = dataOrNull;
    if (data != null) {
      return onData(data);
    } else {
      return alternative;
    }
  }

  K when<K>(
      {required K Function(SuccessState<T>) success,
      required K Function(ErrorState<T>) error,
      required K Function() loading}) {
    final state = this;
    return switch (state) {
      SuccessState() => success(state),
      ErrorState() => error(state),
      _ => loading(),
    };
  }

  SuccessState<T>? get successStateOrNull {
    final state = this;
    if (state case SuccessState()) {
      return state;
    } else {
      return null;
    }
  }

  bool showLoading(bool isRefresh, bool isPagination) =>
      !isRefresh && !isPagination;
}

class InitialState<T> extends GenericState<T> {}

class ErrorState<T> extends GenericState<T> {
  final T? _cacheData;

  T? get cacheData => _cacheData;
  final Object error;
  final Object? stackTrace;

  ErrorState(this.error, this.stackTrace, {T? cacheData})
      : _cacheData = cacheData;
}

class LoadingState<T> extends GenericState<T> {
  final T? _cacheData;

  T? get cacheData => _cacheData;

  LoadingState({T? cacheData}) : _cacheData = cacheData;
}

class SuccessState<T> extends GenericState<T> {
  T get data => _data;

  final T _data;
  SuccessState(this._data);
}
