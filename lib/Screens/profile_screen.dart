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
        children: [],
      ),
    );
  }
}
