// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CounterInfoModel _$$_CounterInfoModelFromJson(Map<String, dynamic> json) =>
    _$_CounterInfoModel(
      admin_name_id: json['admin_name_id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      contact_name: json['contact_name'] as String?,
      credit_balance: json['credit_balance'] as String?,
    );

Map<String, dynamic> _$$_CounterInfoModelToJson(_$_CounterInfoModel instance) =>
    <String, dynamic>{
      'admin_name_id': instance.admin_name_id,
      'name': instance.name,
      'address': instance.address,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'contact_name': instance.contact_name,
      'credit_balance': instance.credit_balance,
    };
