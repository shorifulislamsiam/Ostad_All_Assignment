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
      home:  const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isSubmitted = false;
  //For Create a List of Data
  List<Map<String,String>> _list=[];
  //For add data into the List
  void addToList() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _list.add({
          "name": _nameController.text,
          "number": _numberController.text,
        });
        _nameController.clear();
        _numberController.clear();
      });

    }
  }
  //For Remove the list with index
  void removeList(index){
    _list.removeAt(index);
  }
  //to show snackbar
  myMassage(massage,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(massage))
    );
  }


  //To show alertdialog
  myAlertDialog(index){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Confirmation"),
            content: Text("Are you sure for Delete?"),
            actions: [
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                  myMassage("You choice cancel option", context);
                },
                child: Icon(Icons.cancel_outlined),
              ),
              TextButton(
                onPressed: (){
                  setState(() {
                    removeList(index);
                    Navigator.pop(context);
                    myMassage("Deleted Successfully", context);
                  });
                },
                child: Icon(Icons.delete),
              ),
            ],
          );
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blue,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              //topLeft: Radius.circular(40),
              //topRight: Radius.circular(40),
              //bottomLeft: Radius.circular(20)
            )
        ),
        title: const Text("Contact List",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      label: const Text("Name"),
                      hintText: "Your your name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: Colors.grey)
                      ),
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Name empty is not allowed";
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: TextFormField(
                      controller: _numberController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        label: const Text("Number"),
                        hintText: "Your your number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(color: Colors.grey)
                        ),
                      ),
                      validator: (value){
                        if(value == null || value.isEmpty ){
                          return "Number empty is not allowed";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 15,),
                  ElevatedButton(
                    onPressed: (){
                      addToList();
                    },
                    child: const Text("Add",),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: Colors.blue,
                        minimumSize: const Size(double.infinity, 50)
                    ),
                  ),
                  const SizedBox(height: 20,),

                ],
              ),
            ),
          ),
          if(_list.isNotEmpty)
            Expanded(
              child: ListView.builder(
                  itemCount: _list.length,
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onLongPress: (){
                        myAlertDialog( index);
                        // setState(() {
                        //
                        // });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8,),
                        child: Card(

                          child: ListTile(
                            leading: const Icon(Icons.person),
                            title: Text("${_list[index]["name"]}"),
                            subtitle: Text("${_list[index]["number"]}"),
                            trailing: const Icon(Icons.call),
                            tileColor: Colors.grey.shade300,
                          ),
                        ),
                      ),
                    );
                  }
              ),
            ),
        ],
      ),
    );
  }
}
