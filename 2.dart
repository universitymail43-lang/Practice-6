class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);
}

void main() {
  House house1 = House(1, "Lake View", 2500000);
  House house2 = House(2, "Faria's Villa", 4000000);
  House house3 = House(3, "Green Cottage", 1800000);

  List<House> houses = [house1, house2, house3];

  print("House Details:");
  for (var house in houses) {
    print("ID: ${house.id}, Name: ${house.name}, Price: ${house.price}");
  }
}
