enum employeeStatus { magang, baru, tetap }

class Employee {
  final String name;
  final String office;
  final employeeStatus status;

  Employee({required this.name, required this.office, required this.status});

  void doingJob() {
    switch (status) {
      case employeeStatus.baru:
        print('ringan');
        break;
      case employeeStatus.magang:
        print('tidak krusial');
        break;
      case employeeStatus.tetap:
        print('berat dan krusial');
        break;
      default:
        break;
    }
  }

  void takeARest() {
    switch (status) {
      case employeeStatus.baru:
        {
          print('in canteen with free food');
        }
        break;
      case employeeStatus.magang:
        {
          print('in canteen without free food');
        }
        break;
      case employeeStatus.tetap:
        {
          print('in canteen free food and dessert');
        }
        break;
      default:
        break;
    }
  }
}
