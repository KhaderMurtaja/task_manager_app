// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_todos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllTodosModelImpl _$$AllTodosModelImplFromJson(Map<String, dynamic> json) =>
    _$AllTodosModelImpl(
      todos: (json['todos'] as List<dynamic>?)
          ?.map((e) => Todo.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      skip: (json['skip'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AllTodosModelImplToJson(_$AllTodosModelImpl instance) =>
    <String, dynamic>{
      'todos': instance.todos,
      'total': instance.total,
      'skip': instance.skip,
      'limit': instance.limit,
    };

_$TodoImpl _$$TodoImplFromJson(Map<String, dynamic> json) => _$TodoImpl(
      id: (json['id'] as num?)?.toInt(),
      todo: json['todo'] as String?,
      completed: json['completed'] as bool?,
      userId: (json['userId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TodoImplToJson(_$TodoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'todo': instance.todo,
      'completed': instance.completed,
      'userId': instance.userId,
    };
