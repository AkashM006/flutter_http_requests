import 'package:flutter/material.dart';
import 'package:http_requests/src/features/employees/domain/entity/employee.dart';

class EmployeeDetailBody extends StatelessWidget {
  final EmployeeEntity employee;
  const EmployeeDetailBody({
    super.key,
    required this.employee,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            employee.name ?? "Anonymous",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }
}
