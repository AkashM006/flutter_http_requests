import 'package:http_requests/src/features/employees/domain/entity/employee.dart';
import 'package:json_annotation/json_annotation.dart';

part 'employee.g.dart';

@JsonSerializable()
class EmployeeModel extends EmployeeEntity {
  @JsonKey(name: 'id')
  final int? empId;
  @JsonKey(name: 'first_name')
  final String? empName;
  @JsonKey(name: 'last_name')
  final String? empLastName;
  @JsonKey(name: 'email')
  final String? empEmail;

  const EmployeeModel(
    this.empId,
    this.empName,
    this.empLastName,
    this.empEmail,
  ) : super(
          id: empId,
          name: empName,
          email: empEmail,
          lastName: empLastName,
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

@JsonSerializable()
class EmployeeRequestModel {
  @JsonKey(name: 'data')
  final EmployeeModel user;

  const EmployeeRequestModel({required this.user});

  factory EmployeeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeRequestModelToJson(this);
}
