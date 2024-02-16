// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_counter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomCounter _$$_CustomCounterFromJson(Map<String, dynamic> json) =>
    _$_CustomCounter(
      id: json['id'] as int?,
      admin_name_id: json['admin_name_id'] as int?,
      contact_number: json['contact_number'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
      contact_name: json['contact_name'] as String?,
      credit_balance: json['credit_balance'] as String?,
      status: json['status'] as String?,
      created_at: json['created_at'] as String?,
    );

Map<String, dynamic> _$$_CustomCounterToJson(_$_CustomCounter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'admin_name_id': instance.admin_name_id,
      'contact_number': instance.contact_number,
      'name': instance.name,
      'address': instance.address,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'contact_name': instance.contact_name,
      'credit_balance': instance.credit_balance,
      'status': instance.status,
      'created_at': instance.created_at,
    };
