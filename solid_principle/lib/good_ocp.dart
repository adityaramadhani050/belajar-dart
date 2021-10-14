abstract class Cinema {
  final int price;

  Cinema(this.price);

  double get calculateAdminFee;
}

class StandartCinema extends Cinema {
  StandartCinema(int price) : super(price);

  @override
  double get calculateAdminFee => price * 0.02;
}

class DeluxeCinema extends Cinema {
  DeluxeCinema(int price) : super(price);

  @override
  double get calculateAdminFee => price * 0.04;
}

class PremiumCinema extends Cinema {
  PremiumCinema(int price) : super(price);

  @override
  double get calculateAdminFee => price * 0.08;
}

class CoupleCinema extends Cinema {
  CoupleCinema(int price) : super(price);

  @override
  double get calculateAdminFee => price * 0.05;
}
