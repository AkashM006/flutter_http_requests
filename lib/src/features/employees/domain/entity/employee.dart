import 'package:equatable/equatable.dart';

class EmployeeEntity extends Equatable {
  final int? id;
  final String? name;
  final String? lastName;
  final String? email;

  const EmployeeEntity({
    this.id,
    this.name,
    this.email,
    this.lastName,
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      email,
      lastName,
    ];
  }
}
