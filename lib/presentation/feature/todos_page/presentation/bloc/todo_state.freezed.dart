// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodoState {
  AllTodosModel? get allTodos => throw _privateConstructorUsedError;
  Todo? get todo => throw _privateConstructorUsedError;
  bool get fetchSuccess => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get loadingMoreTasks => throw _privateConstructorUsedError;
  bool get noMoreTasks => throw _privateConstructorUsedError;
  bool get taskAdded => throw _privateConstructorUsedError;
  bool get taskEdited => throw _privateConstructorUsedError;
  bool get taskDeleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoStateCopyWith<TodoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
  @useResult
  $Res call(
      {AllTodosModel? allTodos,
      Todo? todo,
      bool fetchSuccess,
      bool hasMore,
      String errorMessage,
      bool loading,
      bool loadingMoreTasks,
      bool noMoreTasks,
      bool taskAdded,
      bool taskEdited,
      bool taskDeleted});

  $AllTodosModelCopyWith<$Res>? get allTodos;
  $TodoCopyWith<$Res>? get todo;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allTodos = freezed,
    Object? todo = freezed,
    Object? fetchSuccess = null,
    Object? hasMore = null,
    Object? errorMessage = null,
    Object? loading = null,
    Object? loadingMoreTasks = null,
    Object? noMoreTasks = null,
    Object? taskAdded = null,
    Object? taskEdited = null,
    Object? taskDeleted = null,
  }) {
    return _then(_value.copyWith(
      allTodos: freezed == allTodos
          ? _value.allTodos
          : allTodos // ignore: cast_nullable_to_non_nullable
              as AllTodosModel?,
      todo: freezed == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo?,
      fetchSuccess: null == fetchSuccess
          ? _value.fetchSuccess
          : fetchSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingMoreTasks: null == loadingMoreTasks
          ? _value.loadingMoreTasks
          : loadingMoreTasks // ignore: cast_nullable_to_non_nullable
              as bool,
      noMoreTasks: null == noMoreTasks
          ? _value.noMoreTasks
          : noMoreTasks // ignore: cast_nullable_to_non_nullable
              as bool,
      taskAdded: null == taskAdded
          ? _value.taskAdded
          : taskAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      taskEdited: null == taskEdited
          ? _value.taskEdited
          : taskEdited // ignore: cast_nullable_to_non_nullable
              as bool,
      taskDeleted: null == taskDeleted
          ? _value.taskDeleted
          : taskDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AllTodosModelCopyWith<$Res>? get allTodos {
    if (_value.allTodos == null) {
      return null;
    }

    return $AllTodosModelCopyWith<$Res>(_value.allTodos!, (value) {
      return _then(_value.copyWith(allTodos: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res>? get todo {
    if (_value.todo == null) {
      return null;
    }

    return $TodoCopyWith<$Res>(_value.todo!, (value) {
      return _then(_value.copyWith(todo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TodoStateImplCopyWith<$Res>
    implements $TodoStateCopyWith<$Res> {
  factory _$$TodoStateImplCopyWith(
          _$TodoStateImpl value, $Res Function(_$TodoStateImpl) then) =
      __$$TodoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AllTodosModel? allTodos,
      Todo? todo,
      bool fetchSuccess,
      bool hasMore,
      String errorMessage,
      bool loading,
      bool loadingMoreTasks,
      bool noMoreTasks,
      bool taskAdded,
      bool taskEdited,
      bool taskDeleted});

  @override
  $AllTodosModelCopyWith<$Res>? get allTodos;
  @override
  $TodoCopyWith<$Res>? get todo;
}

/// @nodoc
class __$$TodoStateImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoStateImpl>
    implements _$$TodoStateImplCopyWith<$Res> {
  __$$TodoStateImplCopyWithImpl(
      _$TodoStateImpl _value, $Res Function(_$TodoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allTodos = freezed,
    Object? todo = freezed,
    Object? fetchSuccess = null,
    Object? hasMore = null,
    Object? errorMessage = null,
    Object? loading = null,
    Object? loadingMoreTasks = null,
    Object? noMoreTasks = null,
    Object? taskAdded = null,
    Object? taskEdited = null,
    Object? taskDeleted = null,
  }) {
    return _then(_$TodoStateImpl(
      allTodos: freezed == allTodos
          ? _value.allTodos
          : allTodos // ignore: cast_nullable_to_non_nullable
              as AllTodosModel?,
      todo: freezed == todo
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo?,
      fetchSuccess: null == fetchSuccess
          ? _value.fetchSuccess
          : fetchSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadingMoreTasks: null == loadingMoreTasks
          ? _value.loadingMoreTasks
          : loadingMoreTasks // ignore: cast_nullable_to_non_nullable
              as bool,
      noMoreTasks: null == noMoreTasks
          ? _value.noMoreTasks
          : noMoreTasks // ignore: cast_nullable_to_non_nullable
              as bool,
      taskAdded: null == taskAdded
          ? _value.taskAdded
          : taskAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      taskEdited: null == taskEdited
          ? _value.taskEdited
          : taskEdited // ignore: cast_nullable_to_non_nullable
              as bool,
      taskDeleted: null == taskDeleted
          ? _value.taskDeleted
          : taskDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TodoStateImpl implements _TodoState {
  const _$TodoStateImpl(
      {this.allTodos = null,
      this.todo = null,
      this.fetchSuccess = false,
      this.hasMore = false,
      this.errorMessage = '',
      this.loading = false,
      this.loadingMoreTasks = false,
      this.noMoreTasks = false,
      this.taskAdded = false,
      this.taskEdited = false,
      this.taskDeleted = false});

  @override
  @JsonKey()
  final AllTodosModel? allTodos;
  @override
  @JsonKey()
  final Todo? todo;
  @override
  @JsonKey()
  final bool fetchSuccess;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool loadingMoreTasks;
  @override
  @JsonKey()
  final bool noMoreTasks;
  @override
  @JsonKey()
  final bool taskAdded;
  @override
  @JsonKey()
  final bool taskEdited;
  @override
  @JsonKey()
  final bool taskDeleted;

  @override
  String toString() {
    return 'TodoState(allTodos: $allTodos, todo: $todo, fetchSuccess: $fetchSuccess, hasMore: $hasMore, errorMessage: $errorMessage, loading: $loading, loadingMoreTasks: $loadingMoreTasks, noMoreTasks: $noMoreTasks, taskAdded: $taskAdded, taskEdited: $taskEdited, taskDeleted: $taskDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoStateImpl &&
            (identical(other.allTodos, allTodos) ||
                other.allTodos == allTodos) &&
            (identical(other.todo, todo) || other.todo == todo) &&
            (identical(other.fetchSuccess, fetchSuccess) ||
                other.fetchSuccess == fetchSuccess) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.loadingMoreTasks, loadingMoreTasks) ||
                other.loadingMoreTasks == loadingMoreTasks) &&
            (identical(other.noMoreTasks, noMoreTasks) ||
                other.noMoreTasks == noMoreTasks) &&
            (identical(other.taskAdded, taskAdded) ||
                other.taskAdded == taskAdded) &&
            (identical(other.taskEdited, taskEdited) ||
                other.taskEdited == taskEdited) &&
            (identical(other.taskDeleted, taskDeleted) ||
                other.taskDeleted == taskDeleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      allTodos,
      todo,
      fetchSuccess,
      hasMore,
      errorMessage,
      loading,
      loadingMoreTasks,
      noMoreTasks,
      taskAdded,
      taskEdited,
      taskDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      __$$TodoStateImplCopyWithImpl<_$TodoStateImpl>(this, _$identity);
}

abstract class _TodoState implements TodoState {
  const factory _TodoState(
      {final AllTodosModel? allTodos,
      final Todo? todo,
      final bool fetchSuccess,
      final bool hasMore,
      final String errorMessage,
      final bool loading,
      final bool loadingMoreTasks,
      final bool noMoreTasks,
      final bool taskAdded,
      final bool taskEdited,
      final bool taskDeleted}) = _$TodoStateImpl;

  @override
  AllTodosModel? get allTodos;
  @override
  Todo? get todo;
  @override
  bool get fetchSuccess;
  @override
  bool get hasMore;
  @override
  String get errorMessage;
  @override
  bool get loading;
  @override
  bool get loadingMoreTasks;
  @override
  bool get noMoreTasks;
  @override
  bool get taskAdded;
  @override
  bool get taskEdited;
  @override
  bool get taskDeleted;
  @override
  @JsonKey(ignore: true)
  _$$TodoStateImplCopyWith<_$TodoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
