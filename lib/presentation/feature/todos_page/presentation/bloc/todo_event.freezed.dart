// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String todo, int userId, bool completed) addTodo,
    required TResult Function(int todoId) deleteTodo,
    required TResult Function(int todoId) getSingleTodo,
    required TResult Function(int userId) getTodosByUserId,
    required TResult Function(int skip) getAllTodos,
    required TResult Function(int skip) getTodosWithPagination,
    required TResult Function() fetchMoreTodos,
    required TResult Function(int todoId, bool completed)
        updateTodoCompletedStatus,
    required TResult Function() getTodosOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String todo, int userId, bool completed)? addTodo,
    TResult? Function(int todoId)? deleteTodo,
    TResult? Function(int todoId)? getSingleTodo,
    TResult? Function(int userId)? getTodosByUserId,
    TResult? Function(int skip)? getAllTodos,
    TResult? Function(int skip)? getTodosWithPagination,
    TResult? Function()? fetchMoreTodos,
    TResult? Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult? Function()? getTodosOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String todo, int userId, bool completed)? addTodo,
    TResult Function(int todoId)? deleteTodo,
    TResult Function(int todoId)? getSingleTodo,
    TResult Function(int userId)? getTodosByUserId,
    TResult Function(int skip)? getAllTodos,
    TResult Function(int skip)? getTodosWithPagination,
    TResult Function()? fetchMoreTodos,
    TResult Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult Function()? getTodosOffline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(GetSingleTodo value) getSingleTodo,
    required TResult Function(GetTodosByUserId value) getTodosByUserId,
    required TResult Function(GetAllTodos value) getAllTodos,
    required TResult Function(GetTodosWithPagination value)
        getTodosWithPagination,
    required TResult Function(FetchMoreTodos value) fetchMoreTodos,
    required TResult Function(UpdateTodoCompletedStatus value)
        updateTodoCompletedStatus,
    required TResult Function(GetTodosOffline value) getTodosOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
    TResult? Function(GetSingleTodo value)? getSingleTodo,
    TResult? Function(GetTodosByUserId value)? getTodosByUserId,
    TResult? Function(GetAllTodos value)? getAllTodos,
    TResult? Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult? Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult? Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult? Function(GetTodosOffline value)? getTodosOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(GetSingleTodo value)? getSingleTodo,
    TResult Function(GetTodosByUserId value)? getTodosByUserId,
    TResult Function(GetAllTodos value)? getAllTodos,
    TResult Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult Function(GetTodosOffline value)? getTodosOffline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddTodoImplCopyWith<$Res> {
  factory _$$AddTodoImplCopyWith(
          _$AddTodoImpl value, $Res Function(_$AddTodoImpl) then) =
      __$$AddTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String todo, int userId, bool completed});
}

/// @nodoc
class __$$AddTodoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$AddTodoImpl>
    implements _$$AddTodoImplCopyWith<$Res> {
  __$$AddTodoImplCopyWithImpl(
      _$AddTodoImpl _value, $Res Function(_$AddTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
    Object? userId = null,
    Object? completed = null,
  }) {
    return _then(_$AddTodoImpl(
      todo: null == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddTodoImpl implements AddTodo {
  const _$AddTodoImpl(
      {required this.todo, required this.userId, required this.completed});

  @override
  final String todo;
  @override
  final int userId;
  @override
  final bool completed;

  @override
  String toString() {
    return 'TodoEvent.addTodo(todo: $todo, userId: $userId, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTodoImpl &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todo, userId, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTodoImplCopyWith<_$AddTodoImpl> get copyWith =>
      __$$AddTodoImplCopyWithImpl<_$AddTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String todo, int userId, bool completed) addTodo,
    required TResult Function(int todoId) deleteTodo,
    required TResult Function(int todoId) getSingleTodo,
    required TResult Function(int userId) getTodosByUserId,
    required TResult Function(int skip) getAllTodos,
    required TResult Function(int skip) getTodosWithPagination,
    required TResult Function() fetchMoreTodos,
    required TResult Function(int todoId, bool completed)
        updateTodoCompletedStatus,
    required TResult Function() getTodosOffline,
  }) {
    return addTodo(todo, userId, completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String todo, int userId, bool completed)? addTodo,
    TResult? Function(int todoId)? deleteTodo,
    TResult? Function(int todoId)? getSingleTodo,
    TResult? Function(int userId)? getTodosByUserId,
    TResult? Function(int skip)? getAllTodos,
    TResult? Function(int skip)? getTodosWithPagination,
    TResult? Function()? fetchMoreTodos,
    TResult? Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult? Function()? getTodosOffline,
  }) {
    return addTodo?.call(todo, userId, completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String todo, int userId, bool completed)? addTodo,
    TResult Function(int todoId)? deleteTodo,
    TResult Function(int todoId)? getSingleTodo,
    TResult Function(int userId)? getTodosByUserId,
    TResult Function(int skip)? getAllTodos,
    TResult Function(int skip)? getTodosWithPagination,
    TResult Function()? fetchMoreTodos,
    TResult Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult Function()? getTodosOffline,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(todo, userId, completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(GetSingleTodo value) getSingleTodo,
    required TResult Function(GetTodosByUserId value) getTodosByUserId,
    required TResult Function(GetAllTodos value) getAllTodos,
    required TResult Function(GetTodosWithPagination value)
        getTodosWithPagination,
    required TResult Function(FetchMoreTodos value) fetchMoreTodos,
    required TResult Function(UpdateTodoCompletedStatus value)
        updateTodoCompletedStatus,
    required TResult Function(GetTodosOffline value) getTodosOffline,
  }) {
    return addTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
    TResult? Function(GetSingleTodo value)? getSingleTodo,
    TResult? Function(GetTodosByUserId value)? getTodosByUserId,
    TResult? Function(GetAllTodos value)? getAllTodos,
    TResult? Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult? Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult? Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult? Function(GetTodosOffline value)? getTodosOffline,
  }) {
    return addTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(GetSingleTodo value)? getSingleTodo,
    TResult Function(GetTodosByUserId value)? getTodosByUserId,
    TResult Function(GetAllTodos value)? getAllTodos,
    TResult Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult Function(GetTodosOffline value)? getTodosOffline,
    required TResult orElse(),
  }) {
    if (addTodo != null) {
      return addTodo(this);
    }
    return orElse();
  }
}

abstract class AddTodo implements TodoEvent {
  const factory AddTodo(
      {required final String todo,
      required final int userId,
      required final bool completed}) = _$AddTodoImpl;

  String get todo;
  int get userId;
  bool get completed;
  @JsonKey(ignore: true)
  _$$AddTodoImplCopyWith<_$AddTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTodoImplCopyWith<$Res> {
  factory _$$DeleteTodoImplCopyWith(
          _$DeleteTodoImpl value, $Res Function(_$DeleteTodoImpl) then) =
      __$$DeleteTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int todoId});
}

/// @nodoc
class __$$DeleteTodoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$DeleteTodoImpl>
    implements _$$DeleteTodoImplCopyWith<$Res> {
  __$$DeleteTodoImplCopyWithImpl(
      _$DeleteTodoImpl _value, $Res Function(_$DeleteTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
  }) {
    return _then(_$DeleteTodoImpl(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteTodoImpl implements DeleteTodo {
  const _$DeleteTodoImpl({required this.todoId});

  @override
  final int todoId;

  @override
  String toString() {
    return 'TodoEvent.deleteTodo(todoId: $todoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTodoImpl &&
            (identical(other.todoId, todoId) || other.todoId == todoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTodoImplCopyWith<_$DeleteTodoImpl> get copyWith =>
      __$$DeleteTodoImplCopyWithImpl<_$DeleteTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String todo, int userId, bool completed) addTodo,
    required TResult Function(int todoId) deleteTodo,
    required TResult Function(int todoId) getSingleTodo,
    required TResult Function(int userId) getTodosByUserId,
    required TResult Function(int skip) getAllTodos,
    required TResult Function(int skip) getTodosWithPagination,
    required TResult Function() fetchMoreTodos,
    required TResult Function(int todoId, bool completed)
        updateTodoCompletedStatus,
    required TResult Function() getTodosOffline,
  }) {
    return deleteTodo(todoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String todo, int userId, bool completed)? addTodo,
    TResult? Function(int todoId)? deleteTodo,
    TResult? Function(int todoId)? getSingleTodo,
    TResult? Function(int userId)? getTodosByUserId,
    TResult? Function(int skip)? getAllTodos,
    TResult? Function(int skip)? getTodosWithPagination,
    TResult? Function()? fetchMoreTodos,
    TResult? Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult? Function()? getTodosOffline,
  }) {
    return deleteTodo?.call(todoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String todo, int userId, bool completed)? addTodo,
    TResult Function(int todoId)? deleteTodo,
    TResult Function(int todoId)? getSingleTodo,
    TResult Function(int userId)? getTodosByUserId,
    TResult Function(int skip)? getAllTodos,
    TResult Function(int skip)? getTodosWithPagination,
    TResult Function()? fetchMoreTodos,
    TResult Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult Function()? getTodosOffline,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(todoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(GetSingleTodo value) getSingleTodo,
    required TResult Function(GetTodosByUserId value) getTodosByUserId,
    required TResult Function(GetAllTodos value) getAllTodos,
    required TResult Function(GetTodosWithPagination value)
        getTodosWithPagination,
    required TResult Function(FetchMoreTodos value) fetchMoreTodos,
    required TResult Function(UpdateTodoCompletedStatus value)
        updateTodoCompletedStatus,
    required TResult Function(GetTodosOffline value) getTodosOffline,
  }) {
    return deleteTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
    TResult? Function(GetSingleTodo value)? getSingleTodo,
    TResult? Function(GetTodosByUserId value)? getTodosByUserId,
    TResult? Function(GetAllTodos value)? getAllTodos,
    TResult? Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult? Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult? Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult? Function(GetTodosOffline value)? getTodosOffline,
  }) {
    return deleteTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(GetSingleTodo value)? getSingleTodo,
    TResult Function(GetTodosByUserId value)? getTodosByUserId,
    TResult Function(GetAllTodos value)? getAllTodos,
    TResult Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult Function(GetTodosOffline value)? getTodosOffline,
    required TResult orElse(),
  }) {
    if (deleteTodo != null) {
      return deleteTodo(this);
    }
    return orElse();
  }
}

abstract class DeleteTodo implements TodoEvent {
  const factory DeleteTodo({required final int todoId}) = _$DeleteTodoImpl;

  int get todoId;
  @JsonKey(ignore: true)
  _$$DeleteTodoImplCopyWith<_$DeleteTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSingleTodoImplCopyWith<$Res> {
  factory _$$GetSingleTodoImplCopyWith(
          _$GetSingleTodoImpl value, $Res Function(_$GetSingleTodoImpl) then) =
      __$$GetSingleTodoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int todoId});
}

/// @nodoc
class __$$GetSingleTodoImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$GetSingleTodoImpl>
    implements _$$GetSingleTodoImplCopyWith<$Res> {
  __$$GetSingleTodoImplCopyWithImpl(
      _$GetSingleTodoImpl _value, $Res Function(_$GetSingleTodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
  }) {
    return _then(_$GetSingleTodoImpl(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSingleTodoImpl implements GetSingleTodo {
  const _$GetSingleTodoImpl({required this.todoId});

  @override
  final int todoId;

  @override
  String toString() {
    return 'TodoEvent.getSingleTodo(todoId: $todoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSingleTodoImpl &&
            (identical(other.todoId, todoId) || other.todoId == todoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSingleTodoImplCopyWith<_$GetSingleTodoImpl> get copyWith =>
      __$$GetSingleTodoImplCopyWithImpl<_$GetSingleTodoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String todo, int userId, bool completed) addTodo,
    required TResult Function(int todoId) deleteTodo,
    required TResult Function(int todoId) getSingleTodo,
    required TResult Function(int userId) getTodosByUserId,
    required TResult Function(int skip) getAllTodos,
    required TResult Function(int skip) getTodosWithPagination,
    required TResult Function() fetchMoreTodos,
    required TResult Function(int todoId, bool completed)
        updateTodoCompletedStatus,
    required TResult Function() getTodosOffline,
  }) {
    return getSingleTodo(todoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String todo, int userId, bool completed)? addTodo,
    TResult? Function(int todoId)? deleteTodo,
    TResult? Function(int todoId)? getSingleTodo,
    TResult? Function(int userId)? getTodosByUserId,
    TResult? Function(int skip)? getAllTodos,
    TResult? Function(int skip)? getTodosWithPagination,
    TResult? Function()? fetchMoreTodos,
    TResult? Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult? Function()? getTodosOffline,
  }) {
    return getSingleTodo?.call(todoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String todo, int userId, bool completed)? addTodo,
    TResult Function(int todoId)? deleteTodo,
    TResult Function(int todoId)? getSingleTodo,
    TResult Function(int userId)? getTodosByUserId,
    TResult Function(int skip)? getAllTodos,
    TResult Function(int skip)? getTodosWithPagination,
    TResult Function()? fetchMoreTodos,
    TResult Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult Function()? getTodosOffline,
    required TResult orElse(),
  }) {
    if (getSingleTodo != null) {
      return getSingleTodo(todoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(GetSingleTodo value) getSingleTodo,
    required TResult Function(GetTodosByUserId value) getTodosByUserId,
    required TResult Function(GetAllTodos value) getAllTodos,
    required TResult Function(GetTodosWithPagination value)
        getTodosWithPagination,
    required TResult Function(FetchMoreTodos value) fetchMoreTodos,
    required TResult Function(UpdateTodoCompletedStatus value)
        updateTodoCompletedStatus,
    required TResult Function(GetTodosOffline value) getTodosOffline,
  }) {
    return getSingleTodo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
    TResult? Function(GetSingleTodo value)? getSingleTodo,
    TResult? Function(GetTodosByUserId value)? getTodosByUserId,
    TResult? Function(GetAllTodos value)? getAllTodos,
    TResult? Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult? Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult? Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult? Function(GetTodosOffline value)? getTodosOffline,
  }) {
    return getSingleTodo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(GetSingleTodo value)? getSingleTodo,
    TResult Function(GetTodosByUserId value)? getTodosByUserId,
    TResult Function(GetAllTodos value)? getAllTodos,
    TResult Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult Function(GetTodosOffline value)? getTodosOffline,
    required TResult orElse(),
  }) {
    if (getSingleTodo != null) {
      return getSingleTodo(this);
    }
    return orElse();
  }
}

abstract class GetSingleTodo implements TodoEvent {
  const factory GetSingleTodo({required final int todoId}) =
      _$GetSingleTodoImpl;

  int get todoId;
  @JsonKey(ignore: true)
  _$$GetSingleTodoImplCopyWith<_$GetSingleTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTodosByUserIdImplCopyWith<$Res> {
  factory _$$GetTodosByUserIdImplCopyWith(_$GetTodosByUserIdImpl value,
          $Res Function(_$GetTodosByUserIdImpl) then) =
      __$$GetTodosByUserIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$GetTodosByUserIdImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$GetTodosByUserIdImpl>
    implements _$$GetTodosByUserIdImplCopyWith<$Res> {
  __$$GetTodosByUserIdImplCopyWithImpl(_$GetTodosByUserIdImpl _value,
      $Res Function(_$GetTodosByUserIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetTodosByUserIdImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetTodosByUserIdImpl implements GetTodosByUserId {
  const _$GetTodosByUserIdImpl({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'TodoEvent.getTodosByUserId(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTodosByUserIdImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTodosByUserIdImplCopyWith<_$GetTodosByUserIdImpl> get copyWith =>
      __$$GetTodosByUserIdImplCopyWithImpl<_$GetTodosByUserIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String todo, int userId, bool completed) addTodo,
    required TResult Function(int todoId) deleteTodo,
    required TResult Function(int todoId) getSingleTodo,
    required TResult Function(int userId) getTodosByUserId,
    required TResult Function(int skip) getAllTodos,
    required TResult Function(int skip) getTodosWithPagination,
    required TResult Function() fetchMoreTodos,
    required TResult Function(int todoId, bool completed)
        updateTodoCompletedStatus,
    required TResult Function() getTodosOffline,
  }) {
    return getTodosByUserId(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String todo, int userId, bool completed)? addTodo,
    TResult? Function(int todoId)? deleteTodo,
    TResult? Function(int todoId)? getSingleTodo,
    TResult? Function(int userId)? getTodosByUserId,
    TResult? Function(int skip)? getAllTodos,
    TResult? Function(int skip)? getTodosWithPagination,
    TResult? Function()? fetchMoreTodos,
    TResult? Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult? Function()? getTodosOffline,
  }) {
    return getTodosByUserId?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String todo, int userId, bool completed)? addTodo,
    TResult Function(int todoId)? deleteTodo,
    TResult Function(int todoId)? getSingleTodo,
    TResult Function(int userId)? getTodosByUserId,
    TResult Function(int skip)? getAllTodos,
    TResult Function(int skip)? getTodosWithPagination,
    TResult Function()? fetchMoreTodos,
    TResult Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult Function()? getTodosOffline,
    required TResult orElse(),
  }) {
    if (getTodosByUserId != null) {
      return getTodosByUserId(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(GetSingleTodo value) getSingleTodo,
    required TResult Function(GetTodosByUserId value) getTodosByUserId,
    required TResult Function(GetAllTodos value) getAllTodos,
    required TResult Function(GetTodosWithPagination value)
        getTodosWithPagination,
    required TResult Function(FetchMoreTodos value) fetchMoreTodos,
    required TResult Function(UpdateTodoCompletedStatus value)
        updateTodoCompletedStatus,
    required TResult Function(GetTodosOffline value) getTodosOffline,
  }) {
    return getTodosByUserId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
    TResult? Function(GetSingleTodo value)? getSingleTodo,
    TResult? Function(GetTodosByUserId value)? getTodosByUserId,
    TResult? Function(GetAllTodos value)? getAllTodos,
    TResult? Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult? Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult? Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult? Function(GetTodosOffline value)? getTodosOffline,
  }) {
    return getTodosByUserId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(GetSingleTodo value)? getSingleTodo,
    TResult Function(GetTodosByUserId value)? getTodosByUserId,
    TResult Function(GetAllTodos value)? getAllTodos,
    TResult Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult Function(GetTodosOffline value)? getTodosOffline,
    required TResult orElse(),
  }) {
    if (getTodosByUserId != null) {
      return getTodosByUserId(this);
    }
    return orElse();
  }
}

abstract class GetTodosByUserId implements TodoEvent {
  const factory GetTodosByUserId({required final int userId}) =
      _$GetTodosByUserIdImpl;

  int get userId;
  @JsonKey(ignore: true)
  _$$GetTodosByUserIdImplCopyWith<_$GetTodosByUserIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllTodosImplCopyWith<$Res> {
  factory _$$GetAllTodosImplCopyWith(
          _$GetAllTodosImpl value, $Res Function(_$GetAllTodosImpl) then) =
      __$$GetAllTodosImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int skip});
}

/// @nodoc
class __$$GetAllTodosImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$GetAllTodosImpl>
    implements _$$GetAllTodosImplCopyWith<$Res> {
  __$$GetAllTodosImplCopyWithImpl(
      _$GetAllTodosImpl _value, $Res Function(_$GetAllTodosImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = null,
  }) {
    return _then(_$GetAllTodosImpl(
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAllTodosImpl implements GetAllTodos {
  const _$GetAllTodosImpl({required this.skip});

  @override
  final int skip;

  @override
  String toString() {
    return 'TodoEvent.getAllTodos(skip: $skip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllTodosImpl &&
            (identical(other.skip, skip) || other.skip == skip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllTodosImplCopyWith<_$GetAllTodosImpl> get copyWith =>
      __$$GetAllTodosImplCopyWithImpl<_$GetAllTodosImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String todo, int userId, bool completed) addTodo,
    required TResult Function(int todoId) deleteTodo,
    required TResult Function(int todoId) getSingleTodo,
    required TResult Function(int userId) getTodosByUserId,
    required TResult Function(int skip) getAllTodos,
    required TResult Function(int skip) getTodosWithPagination,
    required TResult Function() fetchMoreTodos,
    required TResult Function(int todoId, bool completed)
        updateTodoCompletedStatus,
    required TResult Function() getTodosOffline,
  }) {
    return getAllTodos(skip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String todo, int userId, bool completed)? addTodo,
    TResult? Function(int todoId)? deleteTodo,
    TResult? Function(int todoId)? getSingleTodo,
    TResult? Function(int userId)? getTodosByUserId,
    TResult? Function(int skip)? getAllTodos,
    TResult? Function(int skip)? getTodosWithPagination,
    TResult? Function()? fetchMoreTodos,
    TResult? Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult? Function()? getTodosOffline,
  }) {
    return getAllTodos?.call(skip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String todo, int userId, bool completed)? addTodo,
    TResult Function(int todoId)? deleteTodo,
    TResult Function(int todoId)? getSingleTodo,
    TResult Function(int userId)? getTodosByUserId,
    TResult Function(int skip)? getAllTodos,
    TResult Function(int skip)? getTodosWithPagination,
    TResult Function()? fetchMoreTodos,
    TResult Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult Function()? getTodosOffline,
    required TResult orElse(),
  }) {
    if (getAllTodos != null) {
      return getAllTodos(skip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(GetSingleTodo value) getSingleTodo,
    required TResult Function(GetTodosByUserId value) getTodosByUserId,
    required TResult Function(GetAllTodos value) getAllTodos,
    required TResult Function(GetTodosWithPagination value)
        getTodosWithPagination,
    required TResult Function(FetchMoreTodos value) fetchMoreTodos,
    required TResult Function(UpdateTodoCompletedStatus value)
        updateTodoCompletedStatus,
    required TResult Function(GetTodosOffline value) getTodosOffline,
  }) {
    return getAllTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
    TResult? Function(GetSingleTodo value)? getSingleTodo,
    TResult? Function(GetTodosByUserId value)? getTodosByUserId,
    TResult? Function(GetAllTodos value)? getAllTodos,
    TResult? Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult? Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult? Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult? Function(GetTodosOffline value)? getTodosOffline,
  }) {
    return getAllTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(GetSingleTodo value)? getSingleTodo,
    TResult Function(GetTodosByUserId value)? getTodosByUserId,
    TResult Function(GetAllTodos value)? getAllTodos,
    TResult Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult Function(GetTodosOffline value)? getTodosOffline,
    required TResult orElse(),
  }) {
    if (getAllTodos != null) {
      return getAllTodos(this);
    }
    return orElse();
  }
}

abstract class GetAllTodos implements TodoEvent {
  const factory GetAllTodos({required final int skip}) = _$GetAllTodosImpl;

  int get skip;
  @JsonKey(ignore: true)
  _$$GetAllTodosImplCopyWith<_$GetAllTodosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTodosWithPaginationImplCopyWith<$Res> {
  factory _$$GetTodosWithPaginationImplCopyWith(
          _$GetTodosWithPaginationImpl value,
          $Res Function(_$GetTodosWithPaginationImpl) then) =
      __$$GetTodosWithPaginationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int skip});
}

/// @nodoc
class __$$GetTodosWithPaginationImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$GetTodosWithPaginationImpl>
    implements _$$GetTodosWithPaginationImplCopyWith<$Res> {
  __$$GetTodosWithPaginationImplCopyWithImpl(
      _$GetTodosWithPaginationImpl _value,
      $Res Function(_$GetTodosWithPaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skip = null,
  }) {
    return _then(_$GetTodosWithPaginationImpl(
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetTodosWithPaginationImpl implements GetTodosWithPagination {
  const _$GetTodosWithPaginationImpl({required this.skip});

  @override
  final int skip;

  @override
  String toString() {
    return 'TodoEvent.getTodosWithPagination(skip: $skip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTodosWithPaginationImpl &&
            (identical(other.skip, skip) || other.skip == skip));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTodosWithPaginationImplCopyWith<_$GetTodosWithPaginationImpl>
      get copyWith => __$$GetTodosWithPaginationImplCopyWithImpl<
          _$GetTodosWithPaginationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String todo, int userId, bool completed) addTodo,
    required TResult Function(int todoId) deleteTodo,
    required TResult Function(int todoId) getSingleTodo,
    required TResult Function(int userId) getTodosByUserId,
    required TResult Function(int skip) getAllTodos,
    required TResult Function(int skip) getTodosWithPagination,
    required TResult Function() fetchMoreTodos,
    required TResult Function(int todoId, bool completed)
        updateTodoCompletedStatus,
    required TResult Function() getTodosOffline,
  }) {
    return getTodosWithPagination(skip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String todo, int userId, bool completed)? addTodo,
    TResult? Function(int todoId)? deleteTodo,
    TResult? Function(int todoId)? getSingleTodo,
    TResult? Function(int userId)? getTodosByUserId,
    TResult? Function(int skip)? getAllTodos,
    TResult? Function(int skip)? getTodosWithPagination,
    TResult? Function()? fetchMoreTodos,
    TResult? Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult? Function()? getTodosOffline,
  }) {
    return getTodosWithPagination?.call(skip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String todo, int userId, bool completed)? addTodo,
    TResult Function(int todoId)? deleteTodo,
    TResult Function(int todoId)? getSingleTodo,
    TResult Function(int userId)? getTodosByUserId,
    TResult Function(int skip)? getAllTodos,
    TResult Function(int skip)? getTodosWithPagination,
    TResult Function()? fetchMoreTodos,
    TResult Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult Function()? getTodosOffline,
    required TResult orElse(),
  }) {
    if (getTodosWithPagination != null) {
      return getTodosWithPagination(skip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(GetSingleTodo value) getSingleTodo,
    required TResult Function(GetTodosByUserId value) getTodosByUserId,
    required TResult Function(GetAllTodos value) getAllTodos,
    required TResult Function(GetTodosWithPagination value)
        getTodosWithPagination,
    required TResult Function(FetchMoreTodos value) fetchMoreTodos,
    required TResult Function(UpdateTodoCompletedStatus value)
        updateTodoCompletedStatus,
    required TResult Function(GetTodosOffline value) getTodosOffline,
  }) {
    return getTodosWithPagination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
    TResult? Function(GetSingleTodo value)? getSingleTodo,
    TResult? Function(GetTodosByUserId value)? getTodosByUserId,
    TResult? Function(GetAllTodos value)? getAllTodos,
    TResult? Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult? Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult? Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult? Function(GetTodosOffline value)? getTodosOffline,
  }) {
    return getTodosWithPagination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(GetSingleTodo value)? getSingleTodo,
    TResult Function(GetTodosByUserId value)? getTodosByUserId,
    TResult Function(GetAllTodos value)? getAllTodos,
    TResult Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult Function(GetTodosOffline value)? getTodosOffline,
    required TResult orElse(),
  }) {
    if (getTodosWithPagination != null) {
      return getTodosWithPagination(this);
    }
    return orElse();
  }
}

abstract class GetTodosWithPagination implements TodoEvent {
  const factory GetTodosWithPagination({required final int skip}) =
      _$GetTodosWithPaginationImpl;

  int get skip;
  @JsonKey(ignore: true)
  _$$GetTodosWithPaginationImplCopyWith<_$GetTodosWithPaginationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMoreTodosImplCopyWith<$Res> {
  factory _$$FetchMoreTodosImplCopyWith(_$FetchMoreTodosImpl value,
          $Res Function(_$FetchMoreTodosImpl) then) =
      __$$FetchMoreTodosImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMoreTodosImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$FetchMoreTodosImpl>
    implements _$$FetchMoreTodosImplCopyWith<$Res> {
  __$$FetchMoreTodosImplCopyWithImpl(
      _$FetchMoreTodosImpl _value, $Res Function(_$FetchMoreTodosImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchMoreTodosImpl implements FetchMoreTodos {
  const _$FetchMoreTodosImpl();

  @override
  String toString() {
    return 'TodoEvent.fetchMoreTodos()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchMoreTodosImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String todo, int userId, bool completed) addTodo,
    required TResult Function(int todoId) deleteTodo,
    required TResult Function(int todoId) getSingleTodo,
    required TResult Function(int userId) getTodosByUserId,
    required TResult Function(int skip) getAllTodos,
    required TResult Function(int skip) getTodosWithPagination,
    required TResult Function() fetchMoreTodos,
    required TResult Function(int todoId, bool completed)
        updateTodoCompletedStatus,
    required TResult Function() getTodosOffline,
  }) {
    return fetchMoreTodos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String todo, int userId, bool completed)? addTodo,
    TResult? Function(int todoId)? deleteTodo,
    TResult? Function(int todoId)? getSingleTodo,
    TResult? Function(int userId)? getTodosByUserId,
    TResult? Function(int skip)? getAllTodos,
    TResult? Function(int skip)? getTodosWithPagination,
    TResult? Function()? fetchMoreTodos,
    TResult? Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult? Function()? getTodosOffline,
  }) {
    return fetchMoreTodos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String todo, int userId, bool completed)? addTodo,
    TResult Function(int todoId)? deleteTodo,
    TResult Function(int todoId)? getSingleTodo,
    TResult Function(int userId)? getTodosByUserId,
    TResult Function(int skip)? getAllTodos,
    TResult Function(int skip)? getTodosWithPagination,
    TResult Function()? fetchMoreTodos,
    TResult Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult Function()? getTodosOffline,
    required TResult orElse(),
  }) {
    if (fetchMoreTodos != null) {
      return fetchMoreTodos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(GetSingleTodo value) getSingleTodo,
    required TResult Function(GetTodosByUserId value) getTodosByUserId,
    required TResult Function(GetAllTodos value) getAllTodos,
    required TResult Function(GetTodosWithPagination value)
        getTodosWithPagination,
    required TResult Function(FetchMoreTodos value) fetchMoreTodos,
    required TResult Function(UpdateTodoCompletedStatus value)
        updateTodoCompletedStatus,
    required TResult Function(GetTodosOffline value) getTodosOffline,
  }) {
    return fetchMoreTodos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
    TResult? Function(GetSingleTodo value)? getSingleTodo,
    TResult? Function(GetTodosByUserId value)? getTodosByUserId,
    TResult? Function(GetAllTodos value)? getAllTodos,
    TResult? Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult? Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult? Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult? Function(GetTodosOffline value)? getTodosOffline,
  }) {
    return fetchMoreTodos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(GetSingleTodo value)? getSingleTodo,
    TResult Function(GetTodosByUserId value)? getTodosByUserId,
    TResult Function(GetAllTodos value)? getAllTodos,
    TResult Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult Function(GetTodosOffline value)? getTodosOffline,
    required TResult orElse(),
  }) {
    if (fetchMoreTodos != null) {
      return fetchMoreTodos(this);
    }
    return orElse();
  }
}

abstract class FetchMoreTodos implements TodoEvent {
  const factory FetchMoreTodos() = _$FetchMoreTodosImpl;
}

/// @nodoc
abstract class _$$UpdateTodoCompletedStatusImplCopyWith<$Res> {
  factory _$$UpdateTodoCompletedStatusImplCopyWith(
          _$UpdateTodoCompletedStatusImpl value,
          $Res Function(_$UpdateTodoCompletedStatusImpl) then) =
      __$$UpdateTodoCompletedStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int todoId, bool completed});
}

/// @nodoc
class __$$UpdateTodoCompletedStatusImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$UpdateTodoCompletedStatusImpl>
    implements _$$UpdateTodoCompletedStatusImplCopyWith<$Res> {
  __$$UpdateTodoCompletedStatusImplCopyWithImpl(
      _$UpdateTodoCompletedStatusImpl _value,
      $Res Function(_$UpdateTodoCompletedStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
    Object? completed = null,
  }) {
    return _then(_$UpdateTodoCompletedStatusImpl(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as int,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateTodoCompletedStatusImpl implements UpdateTodoCompletedStatus {
  const _$UpdateTodoCompletedStatusImpl(
      {required this.todoId, required this.completed});

  @override
  final int todoId;
  @override
  final bool completed;

  @override
  String toString() {
    return 'TodoEvent.updateTodoCompletedStatus(todoId: $todoId, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTodoCompletedStatusImpl &&
            (identical(other.todoId, todoId) || other.todoId == todoId) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todoId, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTodoCompletedStatusImplCopyWith<_$UpdateTodoCompletedStatusImpl>
      get copyWith => __$$UpdateTodoCompletedStatusImplCopyWithImpl<
          _$UpdateTodoCompletedStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String todo, int userId, bool completed) addTodo,
    required TResult Function(int todoId) deleteTodo,
    required TResult Function(int todoId) getSingleTodo,
    required TResult Function(int userId) getTodosByUserId,
    required TResult Function(int skip) getAllTodos,
    required TResult Function(int skip) getTodosWithPagination,
    required TResult Function() fetchMoreTodos,
    required TResult Function(int todoId, bool completed)
        updateTodoCompletedStatus,
    required TResult Function() getTodosOffline,
  }) {
    return updateTodoCompletedStatus(todoId, completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String todo, int userId, bool completed)? addTodo,
    TResult? Function(int todoId)? deleteTodo,
    TResult? Function(int todoId)? getSingleTodo,
    TResult? Function(int userId)? getTodosByUserId,
    TResult? Function(int skip)? getAllTodos,
    TResult? Function(int skip)? getTodosWithPagination,
    TResult? Function()? fetchMoreTodos,
    TResult? Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult? Function()? getTodosOffline,
  }) {
    return updateTodoCompletedStatus?.call(todoId, completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String todo, int userId, bool completed)? addTodo,
    TResult Function(int todoId)? deleteTodo,
    TResult Function(int todoId)? getSingleTodo,
    TResult Function(int userId)? getTodosByUserId,
    TResult Function(int skip)? getAllTodos,
    TResult Function(int skip)? getTodosWithPagination,
    TResult Function()? fetchMoreTodos,
    TResult Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult Function()? getTodosOffline,
    required TResult orElse(),
  }) {
    if (updateTodoCompletedStatus != null) {
      return updateTodoCompletedStatus(todoId, completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(GetSingleTodo value) getSingleTodo,
    required TResult Function(GetTodosByUserId value) getTodosByUserId,
    required TResult Function(GetAllTodos value) getAllTodos,
    required TResult Function(GetTodosWithPagination value)
        getTodosWithPagination,
    required TResult Function(FetchMoreTodos value) fetchMoreTodos,
    required TResult Function(UpdateTodoCompletedStatus value)
        updateTodoCompletedStatus,
    required TResult Function(GetTodosOffline value) getTodosOffline,
  }) {
    return updateTodoCompletedStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
    TResult? Function(GetSingleTodo value)? getSingleTodo,
    TResult? Function(GetTodosByUserId value)? getTodosByUserId,
    TResult? Function(GetAllTodos value)? getAllTodos,
    TResult? Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult? Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult? Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult? Function(GetTodosOffline value)? getTodosOffline,
  }) {
    return updateTodoCompletedStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(GetSingleTodo value)? getSingleTodo,
    TResult Function(GetTodosByUserId value)? getTodosByUserId,
    TResult Function(GetAllTodos value)? getAllTodos,
    TResult Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult Function(GetTodosOffline value)? getTodosOffline,
    required TResult orElse(),
  }) {
    if (updateTodoCompletedStatus != null) {
      return updateTodoCompletedStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateTodoCompletedStatus implements TodoEvent {
  const factory UpdateTodoCompletedStatus(
      {required final int todoId,
      required final bool completed}) = _$UpdateTodoCompletedStatusImpl;

  int get todoId;
  bool get completed;
  @JsonKey(ignore: true)
  _$$UpdateTodoCompletedStatusImplCopyWith<_$UpdateTodoCompletedStatusImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTodosOfflineImplCopyWith<$Res> {
  factory _$$GetTodosOfflineImplCopyWith(_$GetTodosOfflineImpl value,
          $Res Function(_$GetTodosOfflineImpl) then) =
      __$$GetTodosOfflineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTodosOfflineImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$GetTodosOfflineImpl>
    implements _$$GetTodosOfflineImplCopyWith<$Res> {
  __$$GetTodosOfflineImplCopyWithImpl(
      _$GetTodosOfflineImpl _value, $Res Function(_$GetTodosOfflineImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTodosOfflineImpl implements GetTodosOffline {
  const _$GetTodosOfflineImpl();

  @override
  String toString() {
    return 'TodoEvent.getTodosOffline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTodosOfflineImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String todo, int userId, bool completed) addTodo,
    required TResult Function(int todoId) deleteTodo,
    required TResult Function(int todoId) getSingleTodo,
    required TResult Function(int userId) getTodosByUserId,
    required TResult Function(int skip) getAllTodos,
    required TResult Function(int skip) getTodosWithPagination,
    required TResult Function() fetchMoreTodos,
    required TResult Function(int todoId, bool completed)
        updateTodoCompletedStatus,
    required TResult Function() getTodosOffline,
  }) {
    return getTodosOffline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String todo, int userId, bool completed)? addTodo,
    TResult? Function(int todoId)? deleteTodo,
    TResult? Function(int todoId)? getSingleTodo,
    TResult? Function(int userId)? getTodosByUserId,
    TResult? Function(int skip)? getAllTodos,
    TResult? Function(int skip)? getTodosWithPagination,
    TResult? Function()? fetchMoreTodos,
    TResult? Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult? Function()? getTodosOffline,
  }) {
    return getTodosOffline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String todo, int userId, bool completed)? addTodo,
    TResult Function(int todoId)? deleteTodo,
    TResult Function(int todoId)? getSingleTodo,
    TResult Function(int userId)? getTodosByUserId,
    TResult Function(int skip)? getAllTodos,
    TResult Function(int skip)? getTodosWithPagination,
    TResult Function()? fetchMoreTodos,
    TResult Function(int todoId, bool completed)? updateTodoCompletedStatus,
    TResult Function()? getTodosOffline,
    required TResult orElse(),
  }) {
    if (getTodosOffline != null) {
      return getTodosOffline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTodo value) addTodo,
    required TResult Function(DeleteTodo value) deleteTodo,
    required TResult Function(GetSingleTodo value) getSingleTodo,
    required TResult Function(GetTodosByUserId value) getTodosByUserId,
    required TResult Function(GetAllTodos value) getAllTodos,
    required TResult Function(GetTodosWithPagination value)
        getTodosWithPagination,
    required TResult Function(FetchMoreTodos value) fetchMoreTodos,
    required TResult Function(UpdateTodoCompletedStatus value)
        updateTodoCompletedStatus,
    required TResult Function(GetTodosOffline value) getTodosOffline,
  }) {
    return getTodosOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTodo value)? addTodo,
    TResult? Function(DeleteTodo value)? deleteTodo,
    TResult? Function(GetSingleTodo value)? getSingleTodo,
    TResult? Function(GetTodosByUserId value)? getTodosByUserId,
    TResult? Function(GetAllTodos value)? getAllTodos,
    TResult? Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult? Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult? Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult? Function(GetTodosOffline value)? getTodosOffline,
  }) {
    return getTodosOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTodo value)? addTodo,
    TResult Function(DeleteTodo value)? deleteTodo,
    TResult Function(GetSingleTodo value)? getSingleTodo,
    TResult Function(GetTodosByUserId value)? getTodosByUserId,
    TResult Function(GetAllTodos value)? getAllTodos,
    TResult Function(GetTodosWithPagination value)? getTodosWithPagination,
    TResult Function(FetchMoreTodos value)? fetchMoreTodos,
    TResult Function(UpdateTodoCompletedStatus value)?
        updateTodoCompletedStatus,
    TResult Function(GetTodosOffline value)? getTodosOffline,
    required TResult orElse(),
  }) {
    if (getTodosOffline != null) {
      return getTodosOffline(this);
    }
    return orElse();
  }
}

abstract class GetTodosOffline implements TodoEvent {
  const factory GetTodosOffline() = _$GetTodosOfflineImpl;
}
