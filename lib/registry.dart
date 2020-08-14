library registry;

/// A registry to hold any key value.
class Registry {
  Map<dynamic, dynamic> _registry;

  Registry() {
    _registry = <dynamic, dynamic>{};
  }

  put([dynamic key, dynamic value]) {
    _registry[key] = value;
  }

  T get<T>([String key]) {
    return _registry[key];
  }
}
