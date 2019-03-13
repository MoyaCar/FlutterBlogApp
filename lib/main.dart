import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'BlogLike',
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeWidgetState();
  }
}

class HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Card(
            shape: CircleBorder(),
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            elevation: 16,
            child: Container(
              width: 360,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: ExactAssetImage('images/valleluna.jpg'),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 24),
            child: titleZone,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 40),
            child: descritionTextZone,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 16,
        backgroundColor: Colors.orange,
        child: Icon(Icons.more),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MasInfo();
          }));
        },
      ),
    );
  }

  Widget titleZone = Row(
    children: <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Desierto de SanJuan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Text(
                'Republica de Argentina',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      Icon(
        Icons.favorite,
        color: Colors.orangeAccent,
      ),
    ],
  );

  Widget descritionTextZone = Text(
    '  El Parque provincial de Ischigualasto o Valle de la Luna, '
        'situado en el extremo norte de la provincia de San Juan,'
        ' en el Departamento Valle Fértil, es un área protegida'
        ' de 275 369 ha, célebre a nivel científico, ya que resguarda '
        'una importante reserva paleontológica. Es el único lugar del '
        'mundo donde puede verse totalmente al descubierto y perfectamente '
        'diferenciado todo el periodo triásico en forma completa y ordenada. '
        'Se calcula que las formaciones geológicas de este sitio tienen una '
        'antigüedad entre 200 y 250 millones de años.',
    style: TextStyle(fontFamily: 'Roboto'),
  );
}

class MasInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text('No hay info extra'),
            Icon(Icons.error),
          ],
        ),
      ),
    );
  }
}
