import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return WillPopScope(
    onWillPop: () async => false,
    child: SafeArea(
      
      child: Scaffold(
        appBar: yellowBar(),
        body: Container(
          color: Colors.indigo[700],
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Center(
            child: SingleChildScrollView(child: dashboardScreenBody()),
          ),
        )
      )
    ));
  }

  AppBar yellowBar() {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Colors.amber[600],
      title: const Text('Dashboard',  
        style: TextStyle(
          color: Colors.black
        ), 
      ),
      actions: <Widget> [
        settingButton()
      ]
    );
  }

  
Builder settingButton(){
  return Builder(builder: (dashboardScreenContext) => IconButton(
    icon: const Icon(Icons.settings),
    iconSize: 34,
    tooltip: 'Settings',
    onPressed: () {
      Navigator.pushNamed(dashboardScreenContext, '/settings');
    },
  ));
}
  
  Column dashboardScreenBody() {
    return Column(
      children: [
        image('assets/images/AstelIMG2.png'),
        title('Astel Leda'),
        image('assets/images/AstelIMG3.png'),
        title('Pocket Wifi'),
      ],
    );
  }
  Card image(var string) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 5, 
          color: Colors.white
        )
      ),
      elevation: 12,
      child: ClipRRect(
        child: Image.asset(
          string,
          fit: BoxFit.cover,
          
        )
      )
    );
  }

  
  Container title(var string) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 25),
      child: Text(string,
          style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              height: 1,
              fontStyle: FontStyle.italic)),
    );
  }
}


