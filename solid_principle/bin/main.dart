import 'package:solid_principle/good_srp.dart';
import 'package:solid_principle/item.dart';

void main(List<String> arguments) {
  Order order = Order();
  OrderViewer viewer = OrderViewer();

  order.addItem(const Item(1, 'baju', 50));
  order.addItem(const Item(2, 'celana', 80));
  order.addItem(const Item(3, 'topi', 20));
  viewer.showOrder(order);
  order.calculateTotal();

  order.deleteItem(const Item(2, 'celana', 80));
  viewer.showOrder(order);
  order.calculateTotal();
}
