main(){

  Student a = Student('name', "id", "section");
  Student b = Student('a', 'b', 'c');

  print(a.name);
  print(a.id);
  print(a.section);
  print(b.name);
  print(b.id);
  print(b.section);

}



class Student{
  String? name;
  String? id;
  String? section;

  Student(String name,String id,String section){

    this.name = name;
    this.id = id;
    this.section = section;

  }
}