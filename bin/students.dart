void main(List<String> arguments) {
  Student l0 = Student(name: 'Leandro', age: 28);
  Student l1 = Student(name: 'Leandro', age: 28);
  print('l0 == l1 ${l0 == l1}');
  print('l0 $l0');
  print('l1 $l1');
}

class Student {
  late String _name;
  late int _age;

  Student({required String name, required int age}) {
    _name = name;
    _age = age;
  }

  @override
  String toString() => 'name: $_name, age: $_age';

  @override
  bool operator ==(Object other) => toString() == other.toString();
}
