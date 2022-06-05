import 'package:flutter/material.dart';
import 'package:submission_flutter/details_screen.dart';
import 'package:submission_flutter/cars_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
            leading: const Icon(Icons.menu, color: Colors.black,),
            backgroundColor: Colors.white,
            title: const Text(
                'BRABUS',
                style: TextStyle(
                    fontFamily: 'Rockwell',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25)),
        ),
        body: const FirstScreen(),
      )
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return const CarsList();
              } else if (constraints.maxWidth <= 1000) {
                return const CarsGrid(gridCount: 2);
              } else {
                return const CarsGrid(gridCount: 3);
              }
            },
          ),
        );
      },
    );
  }
}

class CarsGrid extends StatelessWidget {
  final int gridCount;

  const CarsGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: carDetailList.map((brabus) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(brabus: brabus);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        brabus.imageAssets,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            brabus.name,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            brabus.subName,
                          ),
                        ),
                        Padding(
                          child: Text(
                            'Price : €${brabus.price.toStringAsFixed(2)}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          padding: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class CarsList extends StatelessWidget {
  const CarsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView.builder(
              itemBuilder: (context, index){
                final CarsDetail brabus = carDetailList[index];
                return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return DetailScreen(brabus: brabus);
                      }));
                    },
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(brabus.imageAssets),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                child: Text(
                                    brabus.name,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20
                                    )
                                ),
                                padding: const EdgeInsets.only(top: 10, left: 10),
                              ),
                              Padding(
                                child: Text(brabus.subName),
                                padding: const EdgeInsets.only(top: 10, left: 10),
                              ),
                              Padding(
                                child: Text(
                                  'Price : €${brabus.price.toStringAsFixed(2)}',
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                                padding: const EdgeInsets.all(10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                );}, itemCount: carDetailList.length,
            )
        )
    );
  }
}



