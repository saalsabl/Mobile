void main(){
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);

  var names1 = <String>{};          
  Set<String> names2 = <String>{};  
  var names3 = <String>{}; // Corrected to be a set

  names1.add("Aaisyah Nursalsabiil");
  names1.add("2341720171");

  names2.addAll({"Aaisyah Nursalsabiil", "2341720171"}); 

  print(names1);
  print(names2);
  print(names3); 
}
