class Item {
  final int id;
  final String name;
  final int price;
  const Item(this.id, this.name, this.price);
}

// BAD
class OrderBad {
  void calculateTotal() {
    // do calculate total
  }

  void getItems() {
    // do return items
  }

  void getItemCount() {
    // do return item count
  }

  void addItem(Item item) {
    // do add item
  }

  void deleteItem(Item item) {
    // do delete item
  }

  void printOrder() {
    // do print order
  }

  void showOrder() {
    // do show order
  }

  void getDailyHistory() {
    // return order history in daily
  }

  void getMonthlyHistory() {
    // return order history in monthly
  }
}

// GOOD
class Order {
  final List<Item> _items = [];

  void calculateTotal() {
    int total = 0;
    for (var i in _items) {
      total += i.price;
    }
    print('Total: $total');
  }

  int get itemCount => _items.length;

  void addItem(Item item) {
    _items.add(item);
  }

  void deleteItem(Item item) {
    if (_items.contains(item)) {
      _items.remove(item);
      print('${item.name} deleted');
    } else {
      print('${item.name} not found');
    }
  }
}

class OrderViewer {
  void printOrder(Order order) {
    // do print order
  }

  void showOrder(Order order) {
    for (var i in order._items) {
      print('Nama Barang: ${i.name} - Harga: ${i.price}');
    }
  }
}

class OrderHistory {
  void getDailyHistory() {
    // return order history in daily
  }

  void getMonthlyHistory() {
    // return order history in monthly
  }
}
