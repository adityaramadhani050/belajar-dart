import 'package:solid_principle/item.dart';

// BAD SINGLE RESPONBILITY PRINCIPLE
class Order {
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
