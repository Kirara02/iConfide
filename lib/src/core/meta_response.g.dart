// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MetaResponse _$$_MetaResponseFromJson(Map<String, dynamic> json) =>
    _$_MetaResponse(
      currentPage: json['current_page'] as int?,
      perPage: json['per_page'] as int?,
      total: json['total'] as int?,
      lastPage: json['last_page'] as int?,
    );

Map<String, dynamic> _$$_MetaResponseToJson(_$_MetaResponse instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'per_page': instance.perPage,
      'total': instance.total,
      'last_page': instance.lastPage,
    };
