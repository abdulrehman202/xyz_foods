class FoodItem {
  late String _id, _name, _category;
  late int _price;

  FoodItem(id, name, price, category) {
    _id = id;
    _name = name;
    _price = price;
    _category = category;
  }

  String id() {
    return _id;
  }

  String name() {
    return _name;
  }

  int price() {
    return _price;
  }

  String category() {
    return _category;
  }
}
