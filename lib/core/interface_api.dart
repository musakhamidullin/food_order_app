

abstract interface class ApiOperation<T> {

    Future<List<T>> get();
}