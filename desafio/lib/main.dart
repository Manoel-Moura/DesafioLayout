import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'colors.dart';
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
  bool _mudaCor = false;
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
        _mudaCor = false;
      } else {
        _valor1 = '*';
        _valor2 = '*';
        _valor3 = '*';
        _salario = '--.---,--';
        _mudaCor = true;
      }
      Cores.mudaCor(_mudaCor);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Cores.corDeFundo,
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
                              color: Cores.roxoClaro,
                              fontFamily: 'Marker_Felt',
                              fontSize: 15.0),
                        ),
                        Text(
                          'Ziraldo!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Cores.roxoEscuro,
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
                          color: Cores.roxoClaro,
                          fontFamily: 'Marker_Felt',
                          fontSize: 15.0)),
                  IconButton(
                      onPressed: () {
                        mudaVisibilidade();
                      },
                      icon: Icon(_visibilidade
                          ? Icons.visibility
                          : Icons.visibility_off),
                      color: Cores.corDosValores),
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
                                    color: Cores.corDosValores,
                                    fontFamily: 'ConcertOne',
                                    fontSize: 12.0)),
                          ),
                          Icon(
                            Icons.shop_two_rounded,
                            color: Cores.roxoEscuro,
                            size: 35,
                          ),
                          Text(
                            'novos \npedidos',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Cores.roxoClaro,
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
                                    color: Cores.corDosValores,
                                    fontFamily: 'ConcertOne',
                                    fontSize: 12.0)),
                          ),
                          Icon(
                            Icons.people_alt,
                            color: Cores.roxoEscuro,
                            size: 35,
                          ),
                          Text(
                            'novos \nclientes',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Cores.roxoClaro,
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
                                    color: Cores.corDosValores,
                                    fontFamily: 'ConcertOne',
                                    fontSize: 12.0)),
                          ),
                          Icon(
                            Icons.location_city,
                            color: Cores.roxoEscuro,
                            size: 35,
                          ),
                          Text(
                            'novas \ncidades',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Cores.roxoClaro,
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
                        color: Cores.roxoEscuro,
                      ),
                      Column(
                        children: [
                          Text('R\$ ${_salario}',
                              style: TextStyle(
                                  color: Cores.roxoClaro,
                                  fontFamily: 'ConcertOne',
                                  fontSize: 32.0)),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 85),
                            child: Text('em novos pedidos',
                                style: TextStyle(
                                    color: Cores.roxoEscuro,
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
              icon: Icon(
                Icons.person_add,
                color: Colors.grey.shade50,
              ),
            ),
            ActionButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: Colors.grey.shade50,
              ),
            ),
            ActionButton(
              icon: Icon(
                Icons.person_add,
                color: Colors.grey.shade50,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: Cores.corDeFundo,
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
                activeColor: Cores.corIconNav,
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: Cores.corIconNav,
                  ),
                ),
                icon: Icon(
                  Icons.home,
                  color: Cores.corIconNav,
                )),
            BottomNavyBarItem(
                activeColor: Cores.corIconNav,
                title: Text(
                  'Novos pedidos',
                  style: TextStyle(
                    color: Cores.corIconNav,
                  ),
                ),
                icon: Icon(
                  Icons.shop_two_rounded,
                  color: Cores.corIconNav,
                )),
            BottomNavyBarItem(
                activeColor: Cores.corIconNav,
                title: Text(
                  'Novos clientes',
                  style: TextStyle(
                    color: Cores.corIconNav,
                  ),
                ),
                icon: Icon(
                  Icons.people_alt,
                  color: Cores.corIconNav,
                )),
            BottomNavyBarItem(
                activeColor: Cores.corIconNav,
                title: Text(
                  'Dados',
                  style: TextStyle(
                    color: Cores.corIconNav,
                  ),
                ),
                icon: Icon(
                  Icons.show_chart,
                  color: Cores.corIconNav,
                )),
          ],
        ),
      ),
    );
  }
}
