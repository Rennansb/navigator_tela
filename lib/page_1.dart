import 'package:flutter/material.dart';
import 'package:navigator_tela/home_page.dart';
import 'package:navigator_tela/page_2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool visitouPagina2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 01'),
        centerTitle: true,
      ),
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page2()));
                  setState(() {
                    visitouPagina2 = true;
                  });
                },
                child: Text('Vá para Pagina 02')),
          ),
          SizedBox(
            height: 10,
          ),
          if (visitouPagina2)
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Voltar para a Home
              },
              child: Text('Voltar para Home'),
            ),
        ],
      ),
    );
  }
}
