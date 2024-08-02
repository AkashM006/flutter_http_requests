// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$employeeDetailHash() => r'dd416a385ec6ba51a368a9c53b0c41b2b1dcec99';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [employeeDetail].
@ProviderFor(employeeDetail)
const employeeDetailProvider = EmployeeDetailFamily();

/// See also [employeeDetail].
class EmployeeDetailFamily extends Family<AsyncValue<EmployeeEntity>> {
  /// See also [employeeDetail].
  const EmployeeDetailFamily();

  /// See also [employeeDetail].
  EmployeeDetailProvider call(
    int id,
  ) {
    return EmployeeDetailProvider(
      id,
    );
  }

  @override
  EmployeeDetailProvider getProviderOverride(
    covariant EmployeeDetailProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'employeeDetailProvider';
}

/// See also [employeeDetail].
class EmployeeDetailProvider extends AutoDisposeFutureProvider<EmployeeEntity> {
  /// See also [employeeDetail].
  EmployeeDetailProvider(
    int id,
  ) : this._internal(
          (ref) => employeeDetail(
            ref as EmployeeDetailRef,
            id,
          ),
          from: employeeDetailProvider,
          name: r'employeeDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$employeeDetailHash,
          dependencies: EmployeeDetailFamily._dependencies,
          allTransitiveDependencies:
              EmployeeDetailFamily._allTransitiveDependencies,
          id: id,
        );

  EmployeeDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<EmployeeEntity> Function(EmployeeDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EmployeeDetailProvider._internal(
        (ref) => create(ref as EmployeeDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<EmployeeEntity> createElement() {
    return _EmployeeDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EmployeeDetailProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EmployeeDetailRef on AutoDisposeFutureProviderRef<EmployeeEntity> {
  /// The parameter `id` of this provider.
  int get id;
}

class _EmployeeDetailProviderElement
    extends AutoDisposeFutureProviderElement<EmployeeEntity>
    with EmployeeDetailRef {
  _EmployeeDetailProviderElement(super.provider);

  @override
  int get id => (origin as EmployeeDetailProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
