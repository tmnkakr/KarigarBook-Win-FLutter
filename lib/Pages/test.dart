// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/karigar_ledger.dart';

void main() => runApp(const Test());

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Test createState() => _Test();
}

class _Test extends State<Test> {
  List<DynamicWidget> listDynamic = [];
  List<String> data = [];

  Icon floatingIcon = const Icon(Icons.add);

  addDynamic() {
    if (data.isNotEmpty) {
      floatingIcon = const Icon(Icons.add);

      data = [];
      listDynamic = [];
      print('if');
    }
    setState(() {});
    if (listDynamic.length >= 5) {
      return;
    }
    listDynamic.add(DynamicWidget());
  }

  submitData() {
    floatingIcon = const Icon(Icons.arrow_back);
    data = [];
    for (var widget in listDynamic) {
      data.add(widget.controller.text);
    }
    setState(() {});
    print(data.length);
  }

  @override
  Widget build(BuildContext context) {
    Widget result = Flexible(
        flex: 1,
        child: Card(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 10.0),
                      child: Text("${index + 1} : ${data[index]}"),
                    ),
                    const Divider()
                  ],
                ),
              );
            },
          ),
        ));

    Widget dynamicTextField = Flexible(
      flex: 2,
      child: ListView.builder(
        itemCount: listDynamic.length,
        itemBuilder: (_, index) => listDynamic[index],
      ),
    );

    // ignore: avoid_unnecessary_containers
    Widget submitButton = Container(
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: submitData,
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text('Submit Data'),
        ),
      ),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dynamic App'),
        ),
        body: Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Column(children: <Widget>[
                //Col 1,Row 1
                Row(children: <Widget>[
                  Expanded(
                      child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.teal,
                      shadowColor: Colors.red,
                      elevation: 10,
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                    child: const Text(
                      'Miraz KadaiWala',
                      style: TextStyle(
                        fontSize: 45,
                      ),
                    ),
                  )),
//Row1 Col2
                  Expanded(
                      child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 178, 173, 35),
                      shadowColor: const Color.fromARGB(255, 54, 244, 127),
                      elevation: 10,
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                    child: const Text(
                      'Total Pending Pc : 46 ',
                      style: TextStyle(
                        fontSize: 45,
                      ),
                    ),
                  )
                      // ),

                      ),

                  //
                ]),

//Row1 Col1
                Row(children: <Widget>[
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.white,

                      // shadowColor: Colors.red,
                      elevation: 10,
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                    child: const Text(
                      'Date',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white,
                        // shadowColor: Colors.red,
                        elevation: 10,
                      ),
                      onPressed: () {
                        print('Pressed');
                      },
                      child: const Text(
                        'Item Name',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white,
                        // shadowColor: Colors.red,
                        elevation: 10,
                      ),
                      onPressed: () {
                        print('Pressed');
                      },
                      child: const Text(
                        'Remarks',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.white,
                      // shadowColor: Colors.red,
                      elevation: 10,
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                    child: const Text(
                      'Pc Issued',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.white,
                      // shadowColor: Colors.red,
                      elevation: 10,
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                    child: const Text(
                      'Pc Received',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.white,
                      // shadowColor: Colors.red,
                      elevation: 10,
                    ),
                    onPressed: () {
                      print('');
                    },
                    child: const Text(
                      'Pc Remaining',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white,
                        // shadowColor: Colors.red,
                        elevation: 10,
                      ),
                      onPressed: () {
                        print('');
                      },
                      child: const Text(
                        'JobWork',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white,
                        // shadowColor: Colors.red,
                        elevation: 10,
                      ),
                      onPressed: () {
                        print('');
                      },
                      child: const Text(
                        'Issuer',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ]),

// Row3 Col1
                Row(children: <Widget>[
                  const SizedBox(
                      width: 90,
                      height: 25,
                      child: TextField(
                          style: TextStyle(
                              fontSize: 20.0, height: 1, color: Colors.black))),

                  const SizedBox(width: 200, height: 25, child: TextField()),
                  const SizedBox(
                    width: 2,
                    height: 25,
                  ),
                  const SizedBox(width: 200, height: 25, child: TextField()),
                  const SizedBox(
                    width: 2,
                    height: 25,
                  ),
                  const SizedBox(width: 117, height: 25, child: TextField()),
                  const SizedBox(
                    width: 2,
                    height: 25,
                  ),
                  const SizedBox(width: 138, height: 25, child: TextField()),
                  const SizedBox(
                    width: 2,
                    height: 25,
                  ),
                  const SizedBox(width: 155, height: 25, child: TextField()),
                  const SizedBox(
                    width: 2,
                    height: 25,
                  ),
                  const SizedBox(width: 200, height: 25, child: TextField()),
                  const SizedBox(
                    width: 2,
                    height: 25,
                  ),
                  const SizedBox(width: 200, height: 25, child: TextField()),

                  const IconButton(
                    iconSize: 72,
                    icon: const Icon(Icons.add),
                    onPressed: null,
                  )

                  //
                ])
              ]),
              data.isEmpty ? dynamicTextField : result,
              data.isEmpty ? submitButton : Container(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: addDynamic,
          child: floatingIcon,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DynamicWidget extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  DynamicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(children: const <Widget>[
        SizedBox(
            width: 90,
            height: 25,
            child: TextField(
                style:
                    TextStyle(fontSize: 20.0, height: 1, color: Colors.black))),

        SizedBox(width: 200, height: 25, child: TextField()),
        SizedBox(
          width: 2,
          height: 25,
        ),
        SizedBox(width: 200, height: 25, child: TextField()),
        SizedBox(
          width: 2,
          height: 25,
        ),
        SizedBox(width: 117, height: 25, child: TextField()),
        SizedBox(
          width: 2,
          height: 25,
        ),
        SizedBox(width: 138, height: 25, child: TextField()),
        SizedBox(
          width: 2,
          height: 25,
        ),
        SizedBox(width: 155, height: 25, child: TextField()),
        SizedBox(
          width: 2,
          height: 25,
        ),
        SizedBox(width: 200, height: 25, child: TextField()),
        SizedBox(
          width: 2,
          height: 25,
        ),
        SizedBox(width: 200, height: 25, child: TextField()),

        IconButton(
          iconSize: 72,
          icon: Icon(Icons.add),
          onPressed: null,
        )

        //
      ]),
    );
  }
}
