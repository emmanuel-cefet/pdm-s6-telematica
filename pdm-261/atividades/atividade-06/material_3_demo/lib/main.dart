/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';

import 'models/data.dart' as data;
import 'models/models.dart';
import 'widgets/email_list_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Ativando explicitamente o Material 3 com um tema leve e limpo
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue,
      ),
      home: Feed(currentUser: data.user_0),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Feed extends StatefulWidget {
  const Feed({super.key, required this.currentUser});

  final User currentUser;

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    // Coletando o esquema de cores dinâmicas dentro do build para evitar erros de contexto
    final colorScheme = Theme.of(context).colorScheme;
    final backgroundColor = Color.alphaBlend(
      colorScheme.primary.withAlpha(36),
      colorScheme.surface,
    );

    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: EmailListView(currentUser: widget.currentUser),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorScheme.tertiaryContainer,
        foregroundColor: colorScheme.onTertiaryContainer,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';

import 'destinations.dart'; // Importação dos destinos da barra
import 'models/data.dart' as data;
import 'models/models.dart';
import 'widgets/email_list_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue,
      ),
      home: Feed(currentUser: data.user_0),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Feed extends StatefulWidget {
  const Feed({super.key, required this.currentUser});

  final User currentUser;

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  // Estado para controlar qual aba e qual e-mail estão selecionados
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Coleta as cores dentro do método build para evitar erros de inicialização de contexto
    final colorScheme = Theme.of(context).colorScheme;
    final backgroundColor = Color.alphaBlend(
      colorScheme.primary.withAlpha(36),
      colorScheme.surface,
    );

    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: EmailListView(
          selectedIndex: selectedIndex,
          onSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentUser: widget.currentUser,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorScheme.tertiaryContainer,
        foregroundColor: colorScheme.onTertiaryContainer,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      // Adição da barra de navegação no rodapé
      bottomNavigationBar: NavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        // Mapeia nossa lista simples de destinos em widgets visuais do Flutter
        destinations: destinations.map<NavigationDestination>((d) {
          return NavigationDestination(icon: Icon(d.icon), label: d.label);
        }).toList(),
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index; // Atualiza a aba selecionada ao tocar
          });
        },
      ),
    );
  }
}*/

/*import 'package:flutter/material.dart';

import 'models/data.dart' as data;
import 'models/models.dart';
import 'widgets/disappearing_bottom_navigation_bar.dart'; 
import 'widgets/disappearing_navigation_rail.dart';        
import 'widgets/email_list_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue,
      ),
      home: Feed(currentUser: data.user_0),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Feed extends StatefulWidget {
  const Feed({super.key, required this.currentUser});

  final User currentUser;

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  int selectedIndex = 0;
  bool wideScreen = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Verifica a largura da tela atual sempre que houver mudanças de layout/orientação
    final double width = MediaQuery.of(context).size.width;
    wideScreen = width > 600;
  }

  @override
  Widget build(BuildContext context) {
    // Coleta as cores dentro do build para evitar erros de ciclo de vida do contexto
    final colorScheme = Theme.of(context).colorScheme;
    final backgroundColor = Color.alphaBlend(
      colorScheme.primary.withAlpha(36),
      colorScheme.surface,
    );

    return Scaffold(
      body: Row(
        children: [
          // Se a tela for larga, injeta o menu lateral primeiro
          if (wideScreen)
            DisappearingNavigationRail(
              selectedIndex: selectedIndex,
              backgroundColor: backgroundColor,
              onDestinationSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          // A lista de e-mails ocupa o resto do espaço disponível horizontalmente
          Expanded(
            child: Container(
              color: backgroundColor,
              child: EmailListView(
                selectedIndex: selectedIndex,
                onSelected: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                currentUser: widget.currentUser,
              ),
            ),
          ),
        ],
      ),
      // O botão flutuante de "+" só aparece no canto inferior se a tela for estreita
      floatingActionButton: wideScreen
          ? null
          : FloatingActionButton(
              backgroundColor: colorScheme.tertiaryContainer,
              foregroundColor: colorScheme.onTertiaryContainer,
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
      // A barra inferior só aparece se a tela for estreita
      bottomNavigationBar: wideScreen
          ? null
          : DisappearingBottomNavigationBar(
              selectedIndex: selectedIndex,
              onDestinationSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
    );
  }
}
*/

/*import 'package:flutter/material.dart';

// Remove the destination.dart import, it's not required
import 'animations.dart'; 
import 'models/data.dart' as data;
import 'models/models.dart';
import 'widgets/animated_floating_action_button.dart';
import 'widgets/disappearing_bottom_navigation_bar.dart';  // Add import
import 'widgets/disappearing_navigation_rail.dart';        // Add import
import 'widgets/email_list_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Feed(currentUser: data.user_0),
    );
  }
}

class Feed extends StatefulWidget {
  const Feed({super.key, required this.currentUser});

  final User currentUser;

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> with SingleTickerProviderStateMixin {
  late final _colorScheme = Theme.of(context).colorScheme;
  late final _backgroundColor = Color.alphaBlend(
    _colorScheme.primary.withAlpha(36),
    _colorScheme.surface,
  );

  late final _controller = AnimationController(
    duration: const Duration(milliseconds: 1000),
    reverseDuration: const Duration(milliseconds: 1250),
    value: 0,
    vsync: this,
  );
  late final _railAnimation = RailAnimation(parent: _controller);
  late final _railFabAnimation = RailFabAnimation(parent: _controller);
  late final _barAnimation = BarAnimation(parent: _controller);

  int selectedIndex = 0;
                                                  // Add from here...
  /*bool wideScreen = false;*/
  bool controllerInitialized = false;  

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final double width = MediaQuery.of(context).size.width;
    /*wideScreen = width > 600;*/
    final AnimationStatus status = _controller.status;
    if (width > 600) {
      if (status != AnimationStatus.forward && status != AnimationStatus.completed) {
        _controller.forward();
      }
    } else {
        if (status != AnimationStatus.reverse && status != AnimationStatus.dismissed) {
          _controller.reverse();
        }
      }
    if (!controllerInitialized) {
      controllerInitialized = true;
      _controller.value = width > 600 ? 1 : 0;
    }

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
                                                 // ... to here.

  @override
  Widget build(BuildContext context) {

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {                                             // Modify from here...
        return Scaffold(
          body: Row(
            children: [
              /*if (wideScreen)*/
              DisappearingNavigationRail(
                railAnimation: _railAnimation,
                railFabAnimation: _railFabAnimation,
                selectedIndex: selectedIndex,
                backgroundColor: _backgroundColor,
                onDestinationSelected: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              Expanded(
                child: Container(
                  color: _backgroundColor,
                  child: EmailListView(
                  selectedIndex: selectedIndex,
                  onSelected: (index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  currentUser: widget.currentUser,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          /*backgroundColor: _colorScheme.tertiaryContainer,
          foregroundColor: _colorScheme.onTertiaryContainer,*/
          Animation: _barAnimation,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: DisappearingBottomNavigationBar(
          barAnimation: _barAnimation,
          selectedIndex: selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      );
    },
                                                  );                                              // ... to here.
  }
}
*/

import 'package:flutter/material.dart';

import 'animations.dart'; 
import 'models/data.dart' as data;
import 'models/models.dart';
import 'transitions/list_detail_transition.dart';
import 'widgets/animated_floating_action_button.dart'; 
import 'widgets/disappearing_bottom_navigation_bar.dart'; 
import 'widgets/disappearing_navigation_rail.dart';        
import 'widgets/email_list_view.dart';
import 'widgets/reply_list_view.dart'; 

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue,
      ),
      home: Feed(currentUser: data.user_0),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Feed extends StatefulWidget {
  const Feed({super.key, required this.currentUser});

  final User currentUser;

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    duration: const Duration(milliseconds: 1000),
    reverseDuration: const Duration(milliseconds: 1250),
    value: 0,
    vsync: this,
  );
  
  late final _railAnimation = RailAnimation(parent: _controller);
  late final _railFabAnimation = RailFabAnimation(parent: _controller);
  late final _barAnimation = BarAnimation(parent: _controller);

  int selectedIndex = 0;
  bool controllerInitialized = false;  

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final double width = MediaQuery.of(context).size.width;
    final AnimationStatus status = _controller.status;
    
    if (width > 600) {
      if (status != AnimationStatus.forward && status != AnimationStatus.completed) {
        _controller.forward();
      }
    } else {
      if (status != AnimationStatus.reverse && status != AnimationStatus.dismissed) {
        _controller.reverse();
      }
    }
    
    if (!controllerInitialized) {
      controllerInitialized = true;
      _controller.value = width > 600 ? 1 : 0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final backgroundColor = Color.alphaBlend(
      colorScheme.primary.withAlpha(36),
      colorScheme.surface,
    );

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) { 
        return Scaffold(
          body: Row(
            children: [
              DisappearingNavigationRail(
                railAnimation: _railAnimation,
                railFabAnimation: _railFabAnimation,
                selectedIndex: selectedIndex,
                backgroundColor: backgroundColor,
                onDestinationSelected: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              Expanded(
                child: Container(
                  color: backgroundColor,
                  child: ListDetailTransition(
                    animation: _railAnimation,
                    one: EmailListView(
                      selectedIndex: selectedIndex,
                      onSelected: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      currentUser: widget.currentUser,
                    ),
                    two: const ReplyListView(),
                  ),
                ),
              ),
            ], // Row children fechado corretamente aqui
          ), // Row fechada corretamente aqui
          floatingActionButton: AnimatedFloatingActionButton(
            animation: _barAnimation,
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          bottomNavigationBar: DisappearingBottomNavigationBar(
            barAnimation: _barAnimation,
            selectedIndex: selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        );
      },
    );
  }
}

