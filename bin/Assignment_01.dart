//                             //A=> Start
//
// class Role{
//
// }
// class students implements Role{
//   void displayRole(){
//     print("I am a Student");
//   }
// }
// class teacher implements Role{
//   void displayRole(){
//     print("I am a Teacher");
//   }
// }
//
// void main(){
//   students studentName = students();
//   studentName.displayRole();
//   teacher teacherName = teacher();
//   teacherName.displayRole();
//
// }
// //A => End
//
// // B=> Start
// // # Create a class Person:
//
// // import 'dart:io';
// //
// // class Role{
// //
// // }
// // class person implements Role{
// //   String ?name;
// //   int? age;
// //   String ? address;
// //   person(this.name, this.age, this.address);
// //   String? get personName => name;
// //   int? get personAge => age;
// //   String? get personAddress => address;
// //
// //
// // }
// // void main(){
// // print("Enter your name:");
// //   String? name = stdin.readLineSync();
// //
// //   print("Enter your age:");
// //   int? age = int.tryParse(stdin.readLineSync()!);
// //
// //   print("Enter your address:");
// //   String? address = stdin.readLineSync();
// //
// //   person uperson = person(name, age, address);
// //
// //   print("The name is: ${uperson.name}");
// //   print("Age is: ${uperson.age}");
// //   print("Address is: ${uperson.address}");
// // }
//
//
//                         //B=> or/alternatives
//
//
//
// class Role{
//
// }
// class person implements Role{
//   String ?_name;
//   int? _age;
//   String ? _address;
//   person(this._name, this._age, this._address);
//   String? get personName => _name;
//   int? get personAge => _age;
//   String? get personAddress => _address;
//
//   set Name(person_name){
//     _name =person_name;
//   }
//   set Age(person_age){
//     _age =person_age;
//   }
//   set Address(person_address){
//     _address =person_address;
//   }
// }
//
// void main(){
//   // print("Enter your name:");
//   // String? name = stdin.readLineSync();
//   //
//   // print("Enter your age:");
//   // int? age = int.tryParse(stdin.readLineSync()!);
//   //
//   // print("Enter your address:");
//   // String? address = stdin.readLineSync();
//   person uperson = person("Shoriful Islam Siam", 22, "Dhaka");
//
//   print("Name of the person is: ${uperson.personName}");
//   print("The age is: ${uperson.personAge}");
//   print("The address of this person is: ${uperson.personAddress}");
// }
// //B=> End
//
//                                 //C => Start
//
// abstract class Role{
//
// }
// class person implements Role{
//   String ? _name;
//   int? _age;
//   String ? _address;
//   person(this._name, this._age, this._address);
//   String? get personName => _name;
//   int? get personAge => _age;
//   String? get personAddress => _address;
//   set Name(person_name){
//     _name =person_name;
//   }
//   set Age(person_age){
//     _age =person_age;
//   }
//   set Address(person_address){
//     _address =person_address;
//   }
//   displayRole(){
//     print("I am a person");
//   }
// }
// class Students extends person{
//   int? studentID;
//   String ? grade;
//   List<int?> courseScores=[];
//   Students(String ? _name,int? _age,String ? _address,this.studentID,this.grade,this.courseScores):super(_name, _age,_address);
//
//   @override
//   displayRole(){
//     print("I am a student");
//   }
//
//   double? calculateAvarage(){
//     double total= 0;
//     double avarage;
//     for (var index in courseScores){
//       total += index!;
//     }
//     print("My total Score is: $total");
//     avarage = total / courseScores.length;
//     print("My total Score is: ${avarage.toStringAsFixed(2)}");
//     return null;
//   }
//
// }
// void main(){
//   // print("Enter your name:");
//   // String? name = stdin.readLineSync();
//   //
//   // print("Enter your age:");
//   // int? age = int.tryParse(stdin.readLineSync()!);
//   //
//   // print("Enter your address:");
//   // String? address = stdin.readLineSync();
//
//   print("<==============Object of person class=================>");
//   person uperson = person(null  ,null,null);
//   uperson.displayRole();
//   print("Person name is: ${uperson.Name="siam"}");
//   print("Person age is: ${uperson.Age=22}");
//   print("Person address is: ${uperson.Address="Dhaka\n"}");
//   print("<================object of student class===============>");
//   Students ustudent = Students("Siam", 22, "Dhaka", 123, "A+", [100,97,100,100,96]);
//   ustudent.displayRole();
//   print("Student name is: ${ustudent._name}");
//   print("Student age is: ${ustudent._age}");
//   print("Student address is: ${ustudent._address}");
//   print("Student ID is: ${ustudent.studentID}");
//   print("Student grade is: ${ustudent.grade}");
//   print("Student scores are: ${ustudent.courseScores}");
//   ustudent.calculateAvarage();
//   //print("Avarage score is: ${ustudent.calculateAvarage()}");
//
// }
// //C => End
//
//                                   //D=> Start
//
// class Role{
//
// }
// class person implements Role{
//   String ? _name;
//   int? _age;
//   String ? _address;
//   person(this._name, this._age, this._address);
//   String? get personName => _name;
//   int? get personAge => _age;
//   String? get personAddress => _address;
//   set Name(person_name){
//     _name =person_name;
//   }
//   set Age(person_age){
//     _age =person_age;
//   }
//   set Address(person_address){
//     _address =person_address;
//   }
//   displayRole(){
//     print("I am a person");
//   }
// }
// class Students extends person{
//   int? studentID;
//   String ? grade;
//   List<int?> courseScores=[];
//   Students(String ? _name,int? _age,String ? _address,this.studentID,this.grade,this.courseScores):super(_name, _age,_address);
//
//   @override
//   displayRole(){
//     print("I am a student");
//   }
//
//   double? calculateAvarage(){
//     double total= 0;
//     double avarage;
//     for (var index in courseScores){
//       total += index!;
//     }
//     print("My total Score is: $total");
//     avarage = total / courseScores.length;
//     print("My total Score is: ${avarage.toStringAsFixed(2)}");
//     return null;
//   }
// }
// class Teacher extends person{
//   int ? teacherID;
//   var coursesTaught =[];
//   Teacher(String ? _name,int? _age,String ? _address, this.teacherID, this.coursesTaught ):
//         super(_name, _age, _address);
//
//   @override
//   displayRole(){
//     print("This is for Teacher");
//   }
//
//   void coursesExpertise(){
//     for (var courses in coursesTaught){
//       print("Expertise on $courses");
//     }
//   }
//
// }
//
// void main(){
//   // print("Enter your name:");
//   // String? name = stdin.readLineSync();
//   //
//   // print("Enter your age:");
//   // int? age = int.tryParse(stdin.readLineSync()!);
//   //
//   // print("Enter your address:");
//   // String? address = stdin.readLineSync();
//
//   print("<==============Object of person class=================>");
//   person uperson = person(null  ,null,null);
//   uperson.displayRole();
//   print("Person name is: ${uperson.Name="siam"}");
//   print("Person age is: ${uperson.Age=22}");
//   print("Person address is: ${uperson.Address="Dhaka\n"}");
//   print("<================object of student class===============>");
//   Students ustudent = Students("Siam", 22, "Dhaka", 123, "A+", [100,97,100,100,96]);
//   ustudent.displayRole();
//   print("Student name is: ${ustudent._name}");
//   print("Student age is: ${ustudent._age}");
//   print("Student address is: ${ustudent._address}");
//   print("Student ID is: ${ustudent.studentID}");
//   print("Student grade is: ${ustudent.grade}");
//   print("Student scores are: ${ustudent.courseScores}");
//   ustudent.calculateAvarage();
//   //print("Avarage score is: ${ustudent.calculateAvarage()}");
//   print("<================object of teacher class===============>");
//   Teacher uteacher = Teacher("Md Toufiq ", 27, "Dhaka", 01, ["Laravel","Dart","Flutter","etc" ]);
//   print("My teacher's name is ${uteacher._name},\nand he is ${uteacher._age} years old.\nHis teacher's ID ${uteacher.teacherID} from ${uteacher._address}.");
//   //print("Teacher is expert on ${uteacher.coursesTaught}");
//   uteacher.coursesExpertise();
// }
//
//
// //D=>End
//
//
//                           //E=> Start
// abstract class Role{
//
// }
// class person implements Role{
//   String ? _name;
//   int? _age;
//   String ? _address;
//   person(this._name, this._age, this._address);
//   String? get personName => _name;
//   int? get personAge => _age;
//   String? get personAddress => _address;
//   set Name(person_name){
//     _name =person_name;
//   }
//   set Age(person_age){
//     _age =person_age;
//   }
//   set Address(person_address){
//     _address =person_address;
//   }
//   displayRole(){
//     print("I am a person");
//   }
// }
// class Students extends person{
//   int? studentID;
//   String ? grade;
//   List<int?> courseScores=[];
//   Students(String ? _name,int? _age,String ? _address,this.studentID,this.grade,this.courseScores):super(_name, _age,_address);
//
//   @override
//   displayRole(){
//     print("I am a student");
//   }
//
//   double? calculateAvarage(){
//     double total= 0;
//     double avarage;
//     for (var index in courseScores){
//       total += index!;
//     }
//     print("My total Score is: $total");
//     avarage = total / courseScores.length;
//     print("My total Score is: ${avarage.toStringAsFixed(2)}");
//     return null;
//   }
// }
// class Teacher extends person{
//   int ? teacherID;
//   var coursesTaught =[];
//   Teacher(String ? _name,int? _age,String ? _address, this.teacherID, this.coursesTaught ):
//         super(_name, _age, _address);
//
//   @override
//   displayRole(){
//     print("This is for Teacher");
//   }
//
//   void coursesExpertise(){
//     for (var courses in coursesTaught){
//       print("Expertise on $courses");
//     }
//   }
//
// }
//
// class StudentMangementSystem{
//   void main(){
//
//     print("<==============Object of person class=================>");
//     person uperson = person(null  ,null,null);
//     uperson.displayRole();
//     print("Person name is: ${uperson.Name="siam"}");
//     print("Person age is: ${uperson.Age=22}");
//     print("Person address is: ${uperson.Address="Dhaka\n"}");
//     print("<================object of student class===============>");
//     Students ustudent = Students("Siam", 22, "Dhaka", 123, "A+", [100,97,100,100,96]);
//     ustudent.displayRole();
//     print("Student name is: ${ustudent._name}");
//     print("Student age is: ${ustudent._age}");
//     print("Student address is: ${ustudent._address}");
//     print("Student ID is: ${ustudent.studentID}");
//     print("Student grade is: ${ustudent.grade}");
//     print("Student scores are: ${ustudent.courseScores}");
//     ustudent.calculateAvarage();
//     //print("Avarage score is: ${ustudent.calculateAvarage()}");
//     print("<================object of teacher class===============>");
//     Teacher uteacher = Teacher("Md Toufiq ", 27, "Dhaka", 01, ["Laravel","Dart","Flutter","etc" ]);
//     print("My teacher's name is ${uteacher._name},\nand he is ${uteacher._age} years old.\nHis teacher's ID ${uteacher.teacherID} from ${uteacher._address}.");
//     //print("Teacher is expert on ${uteacher.coursesTaught}");
//     uteacher.coursesExpertise();
//   }
// }
// main(){
//   StudentMangementSystem SMSystem= StudentMangementSystem();
//   SMSystem.main();
// }
// //E=>End