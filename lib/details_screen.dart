import 'package:flutter/material.dart';
import 'package:submission_flutter/cars_list.dart';



class DetailScreen extends StatelessWidget {
  final CarsDetail brabus;

  const DetailScreen({
    Key? key,
    required this.brabus
  }) : super(key: key);

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

  const DetailMobilePage({
    Key? key,
    required this.brabus
  }) : super(key: key);

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
                title: Text(
                    widget.brabus.name,
                    style: const TextStyle(
                        fontFamily: 'Rockwell')),
                titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
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
                    child: Text(
                        widget.brabus.subName,
                        style: const TextStyle(fontSize: 20)),
                    padding: const EdgeInsets.only(bottom: 10),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: widget.brabus.imageExterior.map((asset) {
                        return Padding(
                            padding: const EdgeInsets.all(4),
                            child: ClipRRect(
                                child: Image.asset(asset),
                                borderRadius: BorderRadius.circular(10))
                        );
                      }).toList(),
                    ),
                  ),
                  Table(
                    columnWidths: const {1: FractionColumnWidth(0.7)},
                    children: [
                      TableRow(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Text('Mesin'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 10),
                              child: Text(widget.brabus.engine),
                            )
                          ]
                      ),
                      TableRow(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text('Tenaga'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(widget.brabus.power),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                            child: Text('Torsi'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Text(widget.brabus.torsi),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: widget.brabus.imageInterior.map((asset) {
                        return Padding(
                            padding: const EdgeInsets.all(4),
                            child: ClipRRect(
                                child: Image.asset(asset),
                                borderRadius: BorderRadius.circular(10))
                        );
                      }).toList(),
                    ),
                  ),
                  Table(
                      columnWidths: const {1: FractionColumnWidth(0.7)},
                      children: [
                        TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20, bottom: 20),
                                child: Text('Harga ($_priceSymbol)'),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                      '${widget.brabus.price}',
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Container(
                                    margin: const EdgeInsets.only(top: 10, left: 10),
                                    child: DropdownButton<String>(
                                      items: <String>['IDR', 'Euro'].map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(
                                              value,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
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
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black)
                    ),
                    child: InkWell(
                      child: const Text(
                          'Pesan Sekarang',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          )
                      ),
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

  const DetailWebPage({
    Key? key,
    required this.brabus
  }) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'BRABUS',
                  style: TextStyle(
                    fontFamily: 'Rockwell',
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 32),
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
                          const SizedBox(height: 16),
                          Scrollbar(
                            isAlwaysShown: true,
                            child: SizedBox(
                              height: 150,
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                children: widget.brabus.imageExterior.map((asset) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4),
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
                            child: SizedBox(
                              height: 150,
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                children: widget.brabus.imageInterior.map((asset) {
                                  return Padding(
                                      padding: const EdgeInsets.all(4),
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
                    const SizedBox(width: 32),
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
                                columnWidths: const {1: FractionColumnWidth(0.7)},
                                children: [
                                  TableRow(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(top: 10, bottom: 10),
                                          child: Text('Mesin'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                                          child: Text(widget.brabus.engine),
                                        )
                                      ]
                                  ),
                                  TableRow(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(top: 10, bottom: 10),
                                        child: Text('Tenaga'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                                        child: Text(widget.brabus.power),
                                      ),
                                    ],
                                  ),
                                  TableRow(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(top: 10, bottom: 10),
                                        child: Text('Torsi'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                                        child: Text(widget.brabus.torsi),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Table(
                                  columnWidths: const {1: FractionColumnWidth(0.7)},
                                  children: [
                                    TableRow(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                                            child: Text('Harga ($_priceSymbol)'),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                  '${widget.brabus.price}',
                                                  style: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold)),
                                              Container(
                                                margin: const EdgeInsets.only(top: 10, left: 10),
                                                child: DropdownButton<String>(
                                                  items: <String>['IDR', 'Euro'].map((String value) {
                                                    return DropdownMenuItem<String>(
                                                      value: value,
                                                      child: Text(
                                                          value,
                                                          style: const TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                              fontSize: 20
                                                          )
                                                      ),
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
                                padding: const EdgeInsets.all(20),
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black)
                                ),
                                child: InkWell(
                                  child: const Text(
                                      'Pesan Sekarang',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold
                                      )
                                  ),
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
