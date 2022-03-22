import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:submission_flutter/cars_list.dart';



class DetailScreen extends StatelessWidget {
  final CarsDetail brabus;

  DetailScreen({required this.brabus});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(brabus: brabus);
        } else {
          return DetailMobilePage(brabus: brabus);
        }
      },
    );
  }
}


class DetailMobilePage extends StatefulWidget{
  final CarsDetail brabus;

  DetailMobilePage({required this.brabus});

  @override
  _DetailMobilePage createState() => _DetailMobilePage();
}

class _DetailMobilePage extends State<DetailMobilePage> {
  String? _currency;
  String _priceSymbol = '€';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, isSroller){
          return [
            SliverAppBar(
              backgroundColor: Colors.black,
              pinned: true,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  widget.brabus.imageAssets,
                  fit: BoxFit.fitWidth,
                ),
                title: Text(widget.brabus.name, style: TextStyle(fontFamily: 'Rockwell')),
                titlePadding: EdgeInsets.only(left: 16, bottom: 16),
              ),
            )
          ];
        },
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(widget.brabus.subName, style: TextStyle(fontSize: 20)),
                    padding: EdgeInsets.only(bottom: 10),
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: widget.brabus.imageExterior.map((asset) {
                        return Padding(
                            padding: EdgeInsets.all(4),
                            child: ClipRRect(
                                child: Image.asset(asset),
                                borderRadius: BorderRadius.circular(10))
                        );
                      }).toList(),
                    ),
                  ),
                  Table(
                    columnWidths: {1: FractionColumnWidth(0.7)},
                    children: [
                      TableRow(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Text('Mesin'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Text(widget.brabus.engine),
                            )
                          ]
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text('Tenaga'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(widget.brabus.power),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text('Torsi'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(widget.brabus.torsi),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: widget.brabus.imageInterior.map((asset) {
                        return Padding(
                            padding: EdgeInsets.all(4),
                            child: ClipRRect(
                                child: Image.asset(asset),
                                borderRadius: BorderRadius.circular(10))
                        );
                      }).toList(),
                    ),
                  ),
                  Table(
                      columnWidths: {1: FractionColumnWidth(0.7)},
                      children: [
                        TableRow(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20, bottom: 20),
                                child: Text('Harga ($_priceSymbol)'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('${widget.brabus.price}',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                  Container(
                                    margin: EdgeInsets.only(top: 10, left: 10),
                                    child: DropdownButton<String>(
                                      items: <String>['IDR', 'Euro'].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                        );
                                      }).toList(),
                                      value: _currency,
                                      hint: Text(_priceSymbol),
                                      onChanged: (String? value) {
                                        setState(() {
                                          _currency = value;
                                          if(_currency == 'IDR'){
                                            widget.brabus.price *= 15704;
                                            _priceSymbol = 'Rp';
                                          }
                                          else{
                                            _priceSymbol = '€';
                                          }});
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ]
                        )
                      ]
                  ),

                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                    ),
                    child: InkWell(
                      child: Text('Pesan Sekarang', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('${widget.brabus.name} telah dipesan.'),
                            )
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class DetailWebPage extends StatefulWidget {
  final CarsDetail brabus;

  DetailWebPage({required this.brabus});

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();
  String? _currency;
  String _priceSymbol = '€';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: kIsWeb ? null : AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: Container(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'BRABUS',
                  style: TextStyle(
                    fontFamily: 'Rockwell',
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.brabus.imageAssets),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          SizedBox(height: 16),
                          Scrollbar(
                            isAlwaysShown: true,
                            child: Container(
                              height: 150,
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                children: widget.brabus.imageExterior.map((asset) {
                                  return Padding(
                                    padding: EdgeInsets.all(4),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(asset),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                          Scrollbar(
                            child: Container(
                              height: 150,
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                children: widget.brabus.imageInterior.map((asset) {
                                  return Padding(
                                      padding: EdgeInsets.all(4),
                                      child: ClipRRect(
                                          child: Image.asset(asset),
                                          borderRadius: BorderRadius.circular(10))
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  widget.brabus.name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 30.0,),
                                ),
                              ),
                              Container(
                                child: Text(
                                  widget.brabus.subName,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Table(
                                columnWidths: {1: FractionColumnWidth(0.7)},
                                children: [
                                  TableRow(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(top: 10, bottom: 10),
                                          child: Text('Mesin'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 10, bottom: 10),
                                          child: Text(widget.brabus.engine),
                                        )
                                      ]
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 10, bottom: 10),
                                        child: Text('Tenaga'),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10, bottom: 10),
                                        child: Text(widget.brabus.power),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 10, bottom: 10),
                                        child: Text('Torsi'),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 10, bottom: 10),
                                        child: Text(widget.brabus.torsi),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Table(
                                  columnWidths: {1: FractionColumnWidth(0.7)},
                                  children: [
                                    TableRow(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 20, bottom: 20),
                                            child: Text('Harga ($_priceSymbol)'),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text('${widget.brabus.price}',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                              Container(
                                                margin: EdgeInsets.only(top: 10, left: 10),
                                                child: DropdownButton<String>(
                                                  items: <String>['IDR', 'Euro'].map((String value) {
                                                    return DropdownMenuItem<String>(
                                                      value: value,
                                                      child: Text(value,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                                    );
                                                  }).toList(),
                                                  value: _currency,
                                                  hint: Text(_priceSymbol),
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      _currency = value;
                                                      if(_currency == 'IDR'){
                                                        widget.brabus.price *= 15704;
                                                        _priceSymbol = 'Rp';
                                                      }
                                                      else{
                                                        _priceSymbol = '€';
                                                      }});
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]
                                    )
                                  ]
                              ),

                              Container(
                                padding: EdgeInsets.all(20),
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)
                                ),
                                child: InkWell(
                                  child: Text('Pesan Sekarang', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                                  onTap: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text('${widget.brabus.name} telah dipesan.'),
                                        )
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
