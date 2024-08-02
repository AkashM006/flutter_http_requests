import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_requests/src/features/employees/domain/usecase/get_employees_usecase.dart';

class EmployeesListScreen extends ConsumerWidget {
  const EmployeesListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final employees = ref.watch(getEmployeesUsecaseProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Employees"),
      ),
      body: employees.when(
        data: (data) => ListView.builder(
          itemBuilder: (context, index) => ListTile(
            title: Text(
              data[index].name ?? "Anonymous",
              textAlign: TextAlign.center,
            ),
          ),
          itemCount: data.length,
        ),
        error: (error, stackTrace) => const Center(
          child: Text("Something went wrong"),
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
