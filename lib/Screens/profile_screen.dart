import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void viewModal(context, boxIndex) {
    switch (boxIndex) {
      case 1:
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: const Text("Actualizar nombre de usuario",
                      style: TextStyle(color: Colors.black)),
                  content: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 50),
                              child: const TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    hintText: 'Nombre de usuario'),
                              )),
                        ],
                      )),
                  actions: [
                    TextButton(
                      child: const Text('Cancelar'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    TextButton(
                      child: const Text('Actualizar'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ));
        break;

      case 2:
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: const Text("Actualizar correo electronicico",
                      style: TextStyle(color: Colors.black)),
                  content: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 50),
                              child: const TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    hintText: 'Correo electronicico'),
                              )),
                        ],
                      )),
                  actions: [
                    TextButton(
                      child: const Text('Cancelar'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    TextButton(
                      child: const Text('Actualizar'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ));
        break;
      case 3:
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: const Text("Actualizar contraseña",
                      style: TextStyle(color: Colors.black)),
                  content: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 50),
                              child: const TextField(
                                style: TextStyle(color: Colors.white),
                                decoration:
                                    InputDecoration(hintText: 'Contraseña'),
                              )),
                        ],
                      )),
                  actions: [
                    TextButton(
                      child: const Text('Cancelar'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    TextButton(
                      child: const Text('Actualizar'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey.shade300,
          title: const Text(
            'Deporte',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: IconButton(
                icon: const Icon(Icons.menu),
                tooltip: 'Go to menu',
                color: Colors.black,
                onPressed: () {},
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 0),
                        child: Column(
                          children: [
                            Text('123'),
                            Text('Juegos'),
                            Text('creados')
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.red, shape: BoxShape.circle),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0, right: 10),
                        child: Column(
                          children: [Text('123'), Text('Me gusta')],
                        ),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Juanito Perez'),
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fmd_good_sharp,
                    size: 20,
                  ),
                  Text('Temuco, Chile'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 0.8,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ));
  }
}
