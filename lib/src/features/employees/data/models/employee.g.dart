// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeModel _$EmployeeModelFromJson(Map<String, dynamic> json) =>
    EmployeeModel(
      (json['id'] as num?)?.toInt(),
      (json['employee_age'] as num?)?.toInt(),
      json['employee_name'] as String?,
      (json['employee_salary'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EmployeeModelToJson(EmployeeModel instance) =>
    <String, dynamic>{
      'id': instance.empId,
      'employee_name': instance.empName,
      'employee_salary': instance.empSalary,
      'employee_age': instance.empAge,
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
