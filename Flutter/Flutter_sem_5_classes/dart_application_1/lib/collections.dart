void main() {
  // Method 1 for dec.
  Map countries = <String, String>{};

  countries["Nepal"] = "Kathmandu";
  countries["India"] = "New Delhi";
  countries["Germany"] = "Berlin";

  countries.forEach((country, city) {
    print('$city is in $country');
  });

  countries.forEach((key, value) {
    print(key);
  });
  countries.forEach((key, value) {
    print(value);
  });

  print(countries.keys);
  print(countries.values);

  String searchValue = 'India'; 

  print('$searchValue has ${countries[searchValue]}');
}
