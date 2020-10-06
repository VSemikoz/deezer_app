/// Generic holder for an object that either holds a result of a desired type,
/// or failure
///
/// This is callabale class, calling the class contains two callbacks
/// Throws an assert error when value and failure are the same

class Result<V> {
  V value;
  Exception failure;

  Result.success(this.value);
  Result.failure(this.failure);

  bool get isSuccessful => value != null;

  bool get isFailure => failure != null;

  void call({
    Function(V value) onSuccess,
    Function(Exception failure) onFailure,
  }) {
    assert(value == null || failure == null,
    "Both value and failure can't be null");
    assert(!(value != null && failure != null),
    "Both value and failure can't be non-null");

    if (value != null) onSuccess(value);
    if (failure != null) onFailure(failure);
  }
}
