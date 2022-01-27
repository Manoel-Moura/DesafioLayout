import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'cores.dart';
import 'bottom.dart';

void main() {
  runApp(DesafioLayout());
}

class DesafioLayout extends StatefulWidget {
  const DesafioLayout({Key? key}) : super(key: key);

  @override
  State<DesafioLayout> createState() => _DesafioLayoutState();
}

class _DesafioLayoutState extends State<DesafioLayout> {
  bool _visibilidade = true;
  String _valor1 = '12';
  String _valor2 = '20';
  String _valor3 = '20';
  String _salario = '34.000,00';
  int _currentIndex = 0;

  void mudaVisibilidade() {
    setState(() {
      _visibilidade = !_visibilidade;
      if (_visibilidade != false) {
        _valor1 = '12';
        _valor2 = '20';
        _valor3 = '20';
        _salario = '34.000,00';
      } else {
        _valor1 = '*';
        _valor2 = '*';
        _valor3 = '*';
        _salario = '--.---,--';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Cores.myBackground,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 45),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      // backgroundColor: Colors.cyan,
                      radius: 35.0,
                      backgroundImage: AssetImage('images/dipper.jpg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Olá',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Cores.purple,
                              fontFamily: 'Marker_Felt',
                              fontSize: 15.0),
                        ),
                        Text(
                          'Ziraldo!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Cores.darkPurple,
                            fontFamily: 'Marker_Felt',
                            fontSize: 38.0,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Parabéns! Este mês você fez ',
                      style: TextStyle(
                          color: Cores.purple,
                          fontFamily: 'Marker_Felt',
                          fontSize: 15.0)),
                  IconButton(
                      onPressed: () {
                        mudaVisibilidade();
                      },
                      icon: Icon(_visibilidade
                          ? Icons.visibility
                          : Icons.visibility_off),
                      color: Cores.deepPurple),
                ],
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                color: Cores.corDoCard,
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Text(_valor1,
                                style: TextStyle(
                                    color: Cores.deepPurple,
                                    fontFamily: 'ConcertOne',
                                    fontSize: 12.0)),
                          ),
                          Icon(
                            Icons.shop_two_rounded,
                            color: Cores.darkPurple,
                            size: 35,
                          ),
                          Text(
                            'novos \npedidos',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Cores.purple,
                                fontFamily: 'Marker_Felt',
                                fontSize: 15.0),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Text(_valor2,
                                style: TextStyle(
                                    color: Cores.deepPurple,
                                    fontFamily: 'ConcertOne',
                                    fontSize: 12.0)),
                          ),
                          Icon(
                            Icons.people_alt,
                            color: Cores.darkPurple,
                            size: 35,
                          ),
                          Text(
                            'novos \nclientes',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Cores.purple,
                                fontFamily: 'Marker_Felt',
                                fontSize: 15.0),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 50),
                            child: Text(_valor3,
                                style: TextStyle(
                                    color: Cores.deepPurple,
                                    fontFamily: 'ConcertOne',
                                    fontSize: 12.0)),
                          ),
                          Icon(
                            Icons.location_city,
                            color: Cores.darkPurple,
                            size: 35,
                          ),
                          Text(
                            'novas \ncidades',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Cores.purple,
                                fontFamily: 'Marker_Felt',
                                fontSize: 15.0),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                color: Cores.corDoCard,
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.shop_two_rounded,
                        size: 55.0,
                        color: Cores.darkPurple,
                      ),
                      Column(
                        children: [
                          Text('R\$ ${_salario}',
                              style: TextStyle(
                                  color: Cores.purple,
                                  fontFamily: 'ConcertOne',
                                  fontSize: 32.0)),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 85),
                            child: Text('em novos pedidos',
                                style: TextStyle(
                                    color: Cores.darkPurple,
                                    fontFamily: 'Marker_Felt',
                                    fontSize: 15.0)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: ExpandableFab(
          distance: 112.0,
          children: [
            ActionButton(
              icon: Icon(Icons.format_size),
            ),
            ActionButton(
              icon: Icon(Icons.insert_photo),
            ),
            ActionButton(
              icon: Icon(Icons.videocam),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(title: Text('Item One'), icon: Icon(Icons.home)),
            BottomNavyBarItem(title: Text('Item Two'), icon: Icon(Icons.apps)),
            BottomNavyBarItem(
                title: Text('Item Three'), icon: Icon(Icons.chat_bubble)),
            BottomNavyBarItem(
                title: Text('Item Four'), icon: Icon(Icons.settings)),
          ],
        ),
      ),
    );
  }
}
