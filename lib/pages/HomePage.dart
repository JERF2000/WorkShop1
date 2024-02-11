import 'package:flutter/material.dart';
import 'package:navegacion_tabs/pages/Chats.dart';
import 'package:navegacion_tabs/pages/Novedades.dart';
import 'package:navegacion_tabs/pages/Llamadas.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //DefaultTabController -> Para crear navegación por Tabs
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //Creación de Navegación por Tabs (Pestañas del AppBar)
        appBar: AppBar(
          title: Text("Chat's App"),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.chat),
                child: Text("Chats"),
                ),
              Tab(
                icon: Icon(Icons.newspaper_rounded),
                child: Text("Novedades"),
                ),
              Tab(
                icon: Icon(Icons.call),
                child: Text("Llamadas"),
                ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Chats(),
            Novedades(),
            Llamadas()
          ],
        ),
      ),
    );
  }
}
