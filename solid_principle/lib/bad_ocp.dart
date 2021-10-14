// BAD

class Cinema {
  final int price;

  Cinema(this.price);
}

class AdminFee {
  final Cinema cinema;

  AdminFee(this.cinema);

  double get calculate {
    if (cinema is StandartCinema) {
      return cinema.price * 0.02;
    } else if (cinema is DeluxeCinema) {
      return cinema.price * 0.04;
    } else if (cinema is PremiumCinema) {
      return cinema.price * 0.08;
    } else {
      return 0.0;
    }
  }
}

class StandartCinema extends Cinema {
  StandartCinema(int price) : super(price);
}

class PremiumCinema extends Cinema {
  PremiumCinema(int price) : super(price);
}

class DeluxeCinema extends Cinema {
  DeluxeCinema(int price) : super(price);
}
