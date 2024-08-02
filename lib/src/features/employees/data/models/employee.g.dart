// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) =>
    EmployeeModel(
      (json['id'] as num?)?.toInt(),
      json['first_name'] as String?,
      json['last_name'] as String?,
      json['email'] as String?,
    );

Map<String, dynamic> _$EmployeeModelToJson(EmployeeModel instance) =>
    <String, dynamic>{
      'id': instance.empId,
      'first_name': instance.empName,
      'last_name': instance.empLastName,
      'email': instance.empEmail,
    };

EmployeeListRequestModel _$EmployeeListRequestModelFromJson(
        Map<String, dynamic> json) =>
    EmployeeListRequestModel(
      users: (json['data'] as List<dynamic>)
          .map((e) => EmployeeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EmployeeListRequestModelToJson(
        EmployeeListRequestModel instance) =>
    <String, dynamic>{
      'data': instance.users,
    };

EmployeeRequestModel _$EmployeeRequestModelFromJson(
        Map<String, dynamic> json) =>
    EmployeeRequestModel(
      user: EmployeeModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EmployeeRequestModelToJson(
        EmployeeRequestModel instance) =>
    <String, dynamic>{
      'data': instance.user,
    };
