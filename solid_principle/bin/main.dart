import 'package:solid_principle/good_ocp.dart';

void main(List<String> arguments) {
  Cinema cinema = CoupleCinema(100);
  print(cinema.calculateAdminFee);
}
