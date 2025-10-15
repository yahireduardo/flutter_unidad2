import 'package:donut_app_8sc_25_3/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // my tabs
  List<Widget> myTabs = const [
    //donut tab
    MyTab(iconPath: 'lib/icons/donut.png', label: 'Donuts'),

    //burger tab
     MyTab(iconPath: 'lib/icons/burger.png', label: 'Burger'),

    //smoothie tab
     MyTab(iconPath: 'lib/icons/smoothie.png', label: 'Smoothie'),

    //pancake tab
     MyTab(iconPath: 'lib/icons/pancakes.png', label: 'PanCake'),

    //pizza tab
     MyTab(iconPath: 'lib/icons/pizza.png', label: 'Pizza'),

  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
              Icons.menu,
              color: Colors.grey[800],
              size: 36,
            ),
            onPressed: () {
              //open drawer
            },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
              Icons.person,
              color: Colors.grey[800],
              size: 36,
              ),
              onPressed: (){
                // account button taped
              },
              ),
            )
          ]
        ),
        body: Column(children: [
          //i want to eat
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
            child: Row(
              children: const [
                Text(
                  'I want to ',
                  style: TextStyle(fontSize: 24),
                  ),
                  Text(
                  'Eat',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline
                    ),
                  ),
              ],
            ),
          ),

          const SizedBox(height: 24),


          // tab bar
          TabBar(
            isScrollable: true,
            tabs: myTabs,

            labelColor: Colors.black, // color del texto seleccionado
            unselectedLabelColor: Colors.grey, //color del texto no seleccionado
            labelStyle: const TextStyle(fontWeight: FontWeight.w700),

            // indicador tipo "borde redondeado" (sin sombra, sin relleno)
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            indicator:BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            // quita cualquier underline por defecto
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            )

          // tab bar view
        ],),
      ),
    );
  }
}

