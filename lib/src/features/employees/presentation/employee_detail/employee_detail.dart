import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http_requests/src/features/employees/presentation/employee_detail/employee_detail_provider.dart';
import 'package:http_requests/src/features/employees/presentation/employee_detail/widgets/employee_detail_body.dart';

class EmployeeDetailScreen extends ConsumerWidget {
  final int id;
  const EmployeeDetailScreen({
    super.key,
    this.id = -1,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final employeeDetail = ref.watch(employeeDetailProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: employeeDetail.when(
          data: (data) => Text("Employee: ${data.name ?? "Anonymous"}"),
          error: (error, stackTrace) => const Text("Error"),
          loading: () => const Text("Loading"),
        ),
      ),
      body: employeeDetail.when(
        data: (data) => EmployeeDetailBody(employee: data),
        error: (error, stackTrace) => const Center(
          child: Text("Something went wrong!"),
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
