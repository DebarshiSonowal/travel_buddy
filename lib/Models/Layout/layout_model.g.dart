// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LayoutModel _$$_LayoutModelFromJson(Map<String, dynamic> json) =>
    _$_LayoutModel(
      row: json['row'] as int?,
      column: json['column'] as int?,
      is_seat: json['is_seat'] as bool?,
      seat_status: json['seat_status'] as String?,
      image: json['image'] as String?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$$_LayoutModelToJson(_$_LayoutModel instance) =>
    <String, dynamic>{
      'row': instance.row,
      'column': instance.column,
      'is_seat': instance.is_seat,
      'seat_status': instance.seat_status,
      'image': instance.image,
      'label': instance.label,
    };
