enum Gender { male, female, others }

void main() {
  print("Available Genders:");
  for (var gender in Gender.values) {
    print(gender);
  }
}
