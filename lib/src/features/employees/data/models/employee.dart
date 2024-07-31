import 'package:http_requests/src/features/employees/domain/entity/employee.dart';
import 'package:json_annotation/json_annotation.dart';

part 'employee.g.dart';

@JsonSerializable()
class EmployeeModel extends EmployeeEntity {
  const EmployeeModel({
    int? id,
    int? age,
    String? name,
    int? salary,
  });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeModelFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeModelToJson(this);
}
