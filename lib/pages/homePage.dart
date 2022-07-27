import 'package:flutter/material.dart';
import 'package:prueba1/pages/name.dart';
import 'package:prueba1/utils/core.dart';
import 'package:prueba1/utils/model.dart';

Users data = Users();

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> itemsPregPrincipal = data.user;
  List<dynamic> nombresFiltrados = List<dynamic>.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text(title,
              style: TextStyle(
                color: Colors.black,
              )),
        ),
        body: GroupView(),
        bottomNavigationBar: BottomAppBar(
            color: Colors.greenAccent,
            child: Padding(
                padding: const EdgeInsets.all(8.0), child: Text(bottonbar))));
  }

  Widget GroupView() {
    return ListView.builder(
        itemCount: nombresFiltrados.length + 1,
        itemBuilder: (_, int index) {
          return index == 0 ? _searchBar() : _listItem(index - 1);
        });
  }

  _searchBar() {
    //barra de busqueda, se convierte a minusculas
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(hintText: 'Buscar por Contacto...'),
        onChanged: (text) {
          text = text.toLowerCase();
          setState(() {
            nombresFiltrados = itemsPregPrincipal.where((nota) {
              var tituloNota = nota.toLowerCase();
              return tituloNota.contains(text);
            }).toList();
          });
        },
      ),
    );
  }

  _listItem(index) {
    return GestureDetector(
      child: Card(
        elevation: 3,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Text(nombresFiltrados[index]),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => (Name(
                      name: nombresFiltrados[index],
                    ))));
      },
    );
  }

//conteo de lista inicial
  coutlist() {
    setState(() {
      itemsPregPrincipal = data.user;
      nombresFiltrados = itemsPregPrincipal.where((nota) {
        var tituloNota = nota.toString().contains(
            RegExp(r'[A-Za-z]')); //expresion regular para solo permitir letras
        return tituloNota;
      }).toList();
      nombresFiltrados.sort();
    });
  }

  @override
  void initState() {
    coutlist();
    super.initState();
  }
}
