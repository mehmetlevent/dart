void main(List<String> args) {}

abstract class IStudent {
  final String name;
  final int age;

  int? schoolId;

  IStudent(this.name, this.age);

  void saySomething() {
    print(age);
  }
}

//banuser extends edersen farklı özelliklere sahip olabir. implement yaptığımız da hepsi birebir aynı olacak
// türeyenler dahil. ve kendi içerisinde bu methodları dolduracak.
//bundan türeyen classları işit bir şekilde tutmaya yarar.
class Student implements IStudent { 
  final String name;                
  final int age;

  Student(this.name, this.age);

  @override
  int? schoolId;

  @override
  void saySomething() {
    // TODO: implement saySomething
  }
}

class Student2 implements IStudent {
  final String name;
  final int age;

  @override
  int? schoolId;

  Student2(this.name, this.age);

  @override
  void saySomething() {
    // TODO: implement saySomething
  }
  
}
