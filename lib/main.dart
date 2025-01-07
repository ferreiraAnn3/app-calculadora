import 'package:flutter/material.dart';
import 'calculadora.dart';

void main() {
  runApp(const App());
}

// Cabeçalho
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '✨Calculadora✨',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 238, 142, 202),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Calculadora'),
    );
  }
}

// Classe que garante mudança durante a execução
class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

// Classe que define colunas e linhas
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              // Layout superior
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 241, 144, 188),
                  child: const Text('✨I"m just a girl✨'),
                ),
              ),

              // Layout central
              Expanded(
                flex: 7,
                child: Row(
                  children: [
                    // Coluna 1
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        color: const Color.fromARGB(255, 245, 204, 228),
                        child: const Text(''),
                      ),
                    ),

                    // Calculadora com cor de fundo do container
                    Expanded(
                      flex: 2,
                      child: Container(
                        alignment: Alignment.center,
                        color: const Color.fromARGB(255, 245, 204, 228),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            vertical: constraints.maxHeight * 0.02,
                          ),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 228, 165, 202),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color.fromARGB(255, 230, 48, 139),
                              width: 3,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: const Calculadora(),
                        ),
                      ),
                    ),

                    // Coluna 3
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        color: const Color.fromARGB(255, 245, 204, 228),
                        child: const Text(''),
                      ),
                    ),
                  ],
                ),
              ),

              // Layout inferior
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: const Color.fromARGB(255, 238, 142, 202),
                  child: const Text(''),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}
