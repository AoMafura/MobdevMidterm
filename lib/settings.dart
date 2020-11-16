import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: yellowBar(),
        body: Container(
          color: Colors.indigo[700],
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: SingleChildScrollView(child: settingsScreenBody()),
          ),
        ),
      )
    );
  }

  AppBar yellowBar() {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Colors.amber[600],
      title: const Text('Settings',  
        style: TextStyle(
          color: Colors.black
        ), 
      )
    );
  }
  
  Column settingsScreenBody() {
    return Column(
      children: [
        avatar(),
        astellas(),
        whiteDivider(),
        Form(
            child: Column(
          children: [
            menuButton('MyAccount', ''),
            menuButton('Privacy & Safety', ''),
            menuButton('SimpMeter', ''),
            menuButtonRed('SUPACHA'),
            menuButton('Language', ''),
          ],
        )),
        whiteDivider(),
        logOutButton()
      ],
    );
  }
  
Container astellas() {
  return Container(
    margin: EdgeInsets.fromLTRB(0.0, 20, 0.0, 5),
    child: Text('Astellas',
         style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            height: 1,
            fontStyle: FontStyle.italic)),
  );
}

  Container avatar() {
    return Container(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(100.0),
      child: Image.asset('assets/images/avatar.jpg',
          width: 130.0, height: 130.0, fit: BoxFit.cover),
    ));
  }

  Container whiteDivider() {
    return Container(
            padding: EdgeInsets.fromLTRB(70, 0, 70, 10),
            child: Divider(color: Colors.white)
            );
  }

  Container menuButton(var menuName, var menuRoute){
  return Container(
    margin: EdgeInsets.fromLTRB(25, 0, 25, 10),
    height: 50.0,
    width: 500.0, 
    
    child: Builder(builder: (context) => ElevatedButton(

      child: Text(
        menuName, style: TextStyle(color: Colors.black, fontSize: 18)
      ),

      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[200])
      ),
      onPressed:() {}
    ))
  );
  }
  
  Container menuButtonRed(var menuName){
  return Container(
    margin: EdgeInsets.fromLTRB(25, 0, 25, 10),
    height: 50.0,
    width: 500.0, 
    
    child: Builder(builder: (context) => ElevatedButton(

      child: Text(
        menuName, style: TextStyle(color: Colors.white, fontSize: 18)
      ),

      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.red[900])
      ),
      onPressed:() {
        // Navigator.pushNamed(context, '/SUPACHA');
      }
    ))
  );
  }

  Container menuButtonActive(var menuName, var menuRoute){
  return Container(
    margin: EdgeInsets.fromLTRB(25, 0, 25, 10),
    height: 50.0,
    width: 500.0, 
    
    child: Builder(builder: (context) => ElevatedButton(

      child: Text(
        menuName, style: TextStyle(color: Colors.black, fontSize: 18)
      ),

      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue[200])
      ),
      onPressed:() {
        Navigator.pushNamed(context, menuRoute);
      }
    ))
  );
  }


  Container logOutButton(){
  return Container(
    margin: EdgeInsets.fromLTRB(25, 0, 25, 10),
    height: 50.0,
    width: 500.0, 
    
    child: Builder(builder: (context) => ElevatedButton(

      child: Text(
        'Log Out', style: TextStyle(color: Colors.black, fontSize: 18)
      ),

      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.amber[600])
      ),
      onPressed:() {
        Navigator.of(context).pushNamedAndRemoveUntil(
          '/', 
          (Route<dynamic> route) => false
        );
      }
    ))
  );
  }
}