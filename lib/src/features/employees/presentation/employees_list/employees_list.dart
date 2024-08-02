import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_requests/src/features/employees/presentation/employees_list/employee_list_provider.dart';
import 'package:http_requests/src/features/employees/presentation/employees_list/widgets/employee_list_item.dart';

class EmployeesListScreen extends ConsumerWidget {
  const EmployeesListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final employees = ref.watch(employeeListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Employees"),
      ),
      body: employees.when(
        data: (data) => ListView.builder(
          itemBuilder: (context, index) => EmployeeListItem(
            employee: data[index],
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
