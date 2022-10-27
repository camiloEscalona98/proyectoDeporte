import 'package:accordion/controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

import 'menu/menu_home_screen.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final _headerStyle = const TextStyle(
      color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
  final _contentStyleHeader = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  final _contentStyle = const TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  final _loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

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
        backgroundColor: Color.fromARGB(255, 32, 57, 73),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 32, 57, 73),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Deporte',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: IconButton(
                icon: const Icon(Icons.settings),
                tooltip: 'Go to menu',
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuHome()),
                  );
                },
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 0),
                              child: Column(
                                children: [
                                  Text('123',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                  Text('Juegos',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                  Text('creados',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18))
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
                                    color: Colors.black,
                                    shape: BoxShape.circle),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 0, right: 10),
                              child: Column(
                                children: [
                                  Text('123',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18)),
                                  Text('Me gusta',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18))
                                ],
                              ),
                            ),
                          ),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Juanito Perez',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.fmd_good_sharp,
                          size: 25,
                          color: Colors.white,
                        ),
                        Text('Temuco, Chile',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 0.8,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Accordion(
                    maxOpenSections: 2,
                    headerBackgroundColorOpened: Colors.black54,
                    headerBackgroundColor: Colors.black54,
                    openAndCloseAnimation: true,
                    headerPadding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                    sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                    sectionClosingHapticFeedback: SectionHapticFeedback.light,
                    children: [
                      AccordionSection(
                        isOpen: true,
                        leftIcon: const Icon(Icons.insights_rounded,
                            color: Colors.white),
                        headerBackgroundColor: Color.fromARGB(255, 32, 57, 73),
                        headerBackgroundColorOpened:
                            Color.fromARGB(255, 32, 57, 73),
                        header: Text('Jugados', style: _headerStyle),
                        content: Text(_loremIpsum, style: _contentStyle),
                        contentHorizontalPadding: 20,
                        contentBorderWidth: 1,
                        // onOpenSection: () => print('onOpenSection ...'),
                        // onCloseSection: () => print('onCloseSection ...'),
                      ),
                      AccordionSection(
                        isOpen: false,
                        leftIcon: const Icon(Icons.insights_rounded,
                            color: Colors.white),
                        headerBackgroundColor: Color.fromARGB(255, 32, 57, 73),
                        headerBackgroundColorOpened:
                            Color.fromARGB(255, 32, 57, 73),
                        header: Text('Activos', style: _headerStyle),
                        content: Text(_loremIpsum, style: _contentStyle),
                        contentHorizontalPadding: 20,
                        contentBorderWidth: 1,
                        // onOpenSection: () => print('onOpenSection ...'),
                        // onCloseSection: () => print('onCloseSection ...'),
                      ),
                      AccordionSection(
                        isOpen: false,
                        leftIcon: const Icon(Icons.insights_rounded,
                            color: Colors.white),
                        headerBackgroundColor: Color.fromARGB(255, 32, 57, 73),
                        headerBackgroundColorOpened:
                            Color.fromARGB(255, 32, 57, 73),
                        header: Text('Ganados', style: _headerStyle),
                        content: Text(_loremIpsum, style: _contentStyle),
                        contentHorizontalPadding: 20,
                        contentBorderWidth: 1,
                        // onOpenSection: () => print('onOpenSection ...'),
                        // onCloseSection: () => print('onCloseSection ...'),
                      ),
                      AccordionSection(
                        isOpen: false,
                        leftIcon: const Icon(Icons.insights_rounded,
                            color: Colors.white),
                        headerBackgroundColor: Color.fromARGB(255, 32, 57, 73),
                        headerBackgroundColorOpened:
                            Color.fromARGB(255, 32, 57, 73),
                        header: Text('Comentarios', style: _headerStyle),
                        content: Text(_loremIpsum, style: _contentStyle),
                        contentHorizontalPadding: 20,
                        contentBorderWidth: 1,
                        // onOpenSection: () => print('onOpenSection ...'),
                        // onCloseSection: () => print('onCloseSection ...'),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 80),
                child: SizedBox(
                  width: 300.0,
                  height: 50.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 3,
                      primary: Color.fromARGB(255, 37, 188, 145),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Agregar comentario',
                        style: TextStyle(fontSize: 16)),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
