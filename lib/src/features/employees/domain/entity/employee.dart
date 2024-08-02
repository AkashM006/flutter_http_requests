import 'package:equatable/equatable.dart';

class EmployeeEntity extends Equatable {
  final int? id;
  final String? name;
  final int? age;
  final int? salary;

  const EmployeeEntity({
    this.id,
    this.age,
    this.name,
    this.salary,
  });

  @override
  List<Object?> get props {
    return [id, name, age, salary];
  }
}
