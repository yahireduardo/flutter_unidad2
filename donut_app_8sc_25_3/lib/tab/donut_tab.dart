import 'package:donut_app_8sc_25_3/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
   DonutTab({super.key});

  //List of donuts
  final List donutOnSale= [
    // donutFlavor, donutPrice, donutColor, donutImagePath, donutProvider
    ['Chocolate', '100', Colors.brown, 'lib/images/chocolate_donut.png', 'Starbucks'],
    ['Strawberry', '150', Colors.pink, 'lib/images/strawberry_donut.png', 'Krispy Kreme'],
    ['Ice Cream', '130', Colors.yellow, 'lib/images/icecream_donut.png', "Dunkin' Donuts"],
    ['Grape', '140', Colors.orange, 'lib/images/grape_donut.png', 'Oxxo']
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(25),
      // se encarga de acomodar elementos dentro del grid
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //Número de columnas
        crossAxisCount:  2,
        //relación de aspecto ancho/alto
        childAspectRatio: 1 / 1.5,
        //Espacio entre filas
        mainAxisSpacing: 25,
        //Espacio entre columnas
        crossAxisSpacing: 25,
      ),
      //cuantos elementos hay en el grid
      itemCount: donutOnSale.length,
        // Lo que se va a construir en el grid
      itemBuilder: (context, index){
        return DonutTile(
          donutFlavor: donutOnSale[index][0],
          donutPrice: donutOnSale[index][1],
          donutColor: donutOnSale[index][2],
          donutImagePath: donutOnSale[index][3],
          donutProvider: donutOnSale[index][4],
        );
      },
    );
  }
}

