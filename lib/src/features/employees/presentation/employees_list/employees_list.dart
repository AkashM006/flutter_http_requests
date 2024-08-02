import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:http_requests/src/features/employees/presentation/employees_list/employee_list_provider.dart';
import 'package:http_requests/src/routing/router.dart';

class EmployeesListScreen extends ConsumerWidget {
  const EmployeesListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final employees = ref.watch(employeeListProvider);

    void onUserTouch(int? id) {
      context.pushNamed(
        PAGES.detail.name,
        queryParameters: {
          'id': id.toString(),
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Employees"),
      ),
      body: employees.when(
        data: (data) => ListView.builder(
          itemBuilder: (context, index) => ListTile(
            onTap: () => onUserTouch(data[index].id),
            title: Text(
              data[index].name ?? "Anonymous",
            ),
            subtitle: Text(
              data[index].age?.toString() ?? "",
            ),
          ),
          itemCount: data.length,
        ),
        error: (error, stackTrace) => Center(
          child: Text(
            "Something went wrong: ${error.toString()}",
            textAlign: TextAlign.center,
          ),
        ),
        loading: () => const Center(
          child: SizedBox(
            height: 30,
            width: 30,
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
