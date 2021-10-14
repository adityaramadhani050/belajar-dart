class ConnectToAPI<T> {
  final T? _data;
  final String? _url;

  ConnectToAPI(this._data, this._url);

  T? getData(String url) => (url == _url) ? _data : null;
}
