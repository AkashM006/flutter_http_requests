import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_requests/src/features/employees/domain/entity/employee.dart';
import 'package:http_requests/src/routing/router.dart';
import 'package:go_router/go_router.dart';

class EmployeeListItem extends ConsumerWidget {
  final EmployeeEntity employee;
  const EmployeeListItem({
    super.key,
    required this.employee,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void onUserTouch(int? id) {
      context.pushNamed(
        PAGES.detail.name,
        queryParameters: {
          'id': id.toString(),
        },
      );
    }

    String name = "";

    if (employee.name == null) {
      name = "Anonymous";
    } else {
      name = "${employee.name} ${employee.lastName ?? ""}";
    }

    return ListTile(
      onTap: () => onUserTouch(employee.id),
      title: Text(name),
      subtitle: Text(employee.email ?? "Not provided"),
    );
  }
}
