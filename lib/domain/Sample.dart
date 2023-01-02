class Temp {
  late String _url, _category;

  Temp(url, category) {
    _url = url;
    _category = category;
  }

  get url {
    return _url;
  }

  get category {
    return _category;
  }
}
