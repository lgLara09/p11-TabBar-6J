import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar Lizbeth Garcia"),
            bottom: TabBar(tabs: [
              Tab(
                text: "Libro1",
                icon: Icon(Icons.add_comment),
              ),
              Tab(
                text: "Libro2",
                icon: Icon(Icons.threesixty_outlined),
              ),
              Tab(
                text: "Libro3",
                icon: Icon(Icons.account_box),
              ),
              Tab(
                text: "Libros4",
                icon: Icon(Icons.abc),
              ),
            ] //texto icono),
                ),
          ),
          body: TabBarView(
            children: const <Widget>[
              Center(
                child: Text(
                  "Romance",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
              ),
              Center(
                child: Text(
                  "Misterio",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
              ),
              Center(
                child: Text(
                  "Terror",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
              ),
              Center(
                child: Text(
                  "Aventura",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
              ),
            ],
          ),
        ));
  } //widgets
}
