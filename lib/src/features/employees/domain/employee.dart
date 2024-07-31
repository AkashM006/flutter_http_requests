import 'package:equatable/equatable.dart';

class Employee extends Equatable {
  final int? id;
  final String? name;
  final int? age;
  final int? salary;

  const Employee({
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
