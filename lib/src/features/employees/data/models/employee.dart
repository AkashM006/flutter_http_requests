import 'package:http_requests/src/features/employees/domain/entity/employee.dart';
import 'package:json_annotation/json_annotation.dart';

part 'employee.g.dart';

@JsonSerializable()
class EmployeeModel extends EmployeeEntity {
  @JsonKey(name: 'id')
  final int? empId;
  @JsonKey(name: 'employee_name')
  final String? empName;
  @JsonKey(name: 'employee_salary')
  final int? empSalary;
  @JsonKey(name: 'employee_age')
  final int? empAge;

  const EmployeeModel(
    this.empId,
    this.empAge,
    this.empName,
    this.empSalary,
  ) : super(
          id: empId,
          name: empName,
          salary: empSalary,
          age: empAge,
        );

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeModelToJson(this);
}

@JsonSerializable()
class EmployeeListRequestModel {
  @JsonKey(name: 'data')
  final List<EmployeeModel> users;

  const EmployeeListRequestModel({
    required this.users,
  });

  factory EmployeeListRequestModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeListRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeListRequestModelToJson(this);
}
