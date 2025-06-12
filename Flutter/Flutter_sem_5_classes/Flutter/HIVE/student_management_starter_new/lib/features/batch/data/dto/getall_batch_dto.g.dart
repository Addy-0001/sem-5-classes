// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getall_batch_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetallBatchDTO _$GetallBatchDTOFromJson(Map<String, dynamic> json) =>
    GetallBatchDTO(
      success: json['success'] as bool,
      count: (json['count'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => BatchApiModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetallBatchDTOToJson(GetallBatchDTO instance) =>
    <String, dynamic>{
      'success': instance.success,
      'count': instance.count,
      'data': instance.data,
    };
