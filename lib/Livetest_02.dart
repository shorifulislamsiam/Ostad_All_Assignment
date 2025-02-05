import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.blueGrey
          )
      ),
      home:  const Livetest02(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Livetest02 extends StatefulWidget {
  const Livetest02({super.key});

  @override
  State<Livetest02> createState() => _Livetest02State();
}

class _Livetest02State extends State<Livetest02> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _salaryController = TextEditingController();
  var _formkey = GlobalKey<FormState>();
  bool _isSubmitted = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Add Employe",style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold,
                ),
                  //textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 10,),
              Form(
                key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          label: Text("Name"),
                          hintText: "Enter the Name",

                        ),
                        validator: (value){
                          if(value != null || value!.isNotEmpty){
                            return null;
                          }return "Name cann't be null";
                        },
                      ),
                      TextFormField(
                        controller: _ageController,
                        decoration: InputDecoration(
                          label: Text("Age"),
                          hintText: "Enter the Age",

                        ),
                        validator: (value){
                          if(value != null || value!.isNotEmpty){
                            return null;
                          }return "Age can't be null";
                        },
                      ),
                      TextFormField(
                        controller: _salaryController,
                        decoration: InputDecoration(
                          label: Text("Salary"),
                          hintText: "Enter the Salary",

                        ),
                        validator: (value){
                          if(value != null || value!.isNotEmpty){
                            return null;
                          }return "salary cann't be null";
                        },
                      ),
                    ],
                  ),
              ),
              SizedBox(height: 15,),
              SizedBox(
                child: ElevatedButton(
                    onPressed: (){
                      if (_formkey.currentState!.validate()){
                        _isSubmitted =true;
                        print("Employee added successfully");
                      }
                    },
                    child: Text("Add Employee"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
