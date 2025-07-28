void main() {
  // Declaring list with repeated value
  var did = ['Demon', 'Is', 'Demon'];

  // Printing List
  print("Output of the list is: $did");

  // Declaring set with repeated value with 2 methods
  // ignore: equal_elements_in_set
  var did1 = <String>{'Demon', 'Is', 'Demon'};
  // ignore: equal_elements_in_set
  Set<String> did2 = {'Demon', 'Is', 'Demon'};

  // Printing Set
  print("Output of the set is: $did1");
  print("Output of the set is: $did2");
}
