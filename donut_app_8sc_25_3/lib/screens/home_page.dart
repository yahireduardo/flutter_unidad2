import 'package:donut_app_8sc_25_3/tab/donut_tab.dart';
import 'package:donut_app_8sc_25_3/tab/burger_tab.dart';
import 'package:donut_app_8sc_25_3/tab/smoothie_tab.dart';
import 'package:donut_app_8sc_25_3/tab/pancake_tab.dart';
import 'package:donut_app_8sc_25_3/tab/pizza_tab.dart';
import 'package:flutter/material.dart';
import 'package:donut_app_8sc_25_3/utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0; // índice seleccionado

  late List<Widget> myTabs;

  @override
  void initState() {
    super.initState();
    myTabs = _buildTabs(_current);
  }

  List<Widget> _buildTabs(int selected) {
    return [
      MyTab(iconPath: 'lib/icons/donut.png',    label: 'Donuts',   selected: selected == 0),
      MyTab(iconPath: 'lib/icons/burger.png',   label: 'Burger',   selected: selected == 1),
      MyTab(iconPath: 'lib/icons/smoothie.png', label: 'Smoothie', selected: selected == 2),
      MyTab(iconPath: 'lib/icons/pancakes.png', label: 'PanCake',  selected: selected == 3),
      MyTab(iconPath: 'lib/icons/pizza.png',    label: 'Pizza',    selected: selected == 4),
    ];
  }

  void _setSelected(int i) {
    setState(() {
      _current = i;
      myTabs = _buildTabs(_current);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(Icons.menu, color: Colors.grey[800], size: 36),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(Icons.person, color: Colors.grey[800], size: 36),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            // Título
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: [
                  Text('I want to ', style: TextStyle(fontSize: 24)),
                  Text(
                    'Eat',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // TabBar
            TabBar(
              isScrollable: true,
              tabs: myTabs,

              // Texto: gris (no seleccionado) -> negro (seleccionado)
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              labelStyle: const TextStyle(fontWeight: FontWeight.w700),
              unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w400),

              // Indicador invisible para no envolver el texto, pero
              // con peso > 0 para evitar el assert de TabBar.
              indicatorColor: Colors.transparent,
              indicatorWeight: 1.0,
              overlayColor: WidgetStateProperty.all(Colors.transparent),

              onTap: _setSelected,
            ),

            //3. contenido de pestañas (TabBarView)
            Expanded(
              child: TabBarView(children: [
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PanCakeTab(),
                PizzaTab(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

