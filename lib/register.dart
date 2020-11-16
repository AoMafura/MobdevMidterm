import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: yellowBar(),
        body: Container(
          color: Colors.indigo[700],
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: SingleChildScrollView(child: registerScreenBody()),
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
      title: const Text('Register',  
        style: TextStyle(
          color: Colors.black
        ), 
      )
    );
  }
  
  Column registerScreenBody() {
    return Column(
      children: [
        avatar(),
        astellas(),
        whiteDivider(),
        Form(child: Column(children: [
          usernameFormField(),
          emailFormField(),
          passwordFormField(),
          confirmFormField(),
          registerButton()
        ])),
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

  Container usernameFormField() {
    return Container(
        child: TextFormField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(width: 3, color: Colors.purpleAccent[200]),
          ),
          fillColor: Colors.white,
          focusColor: Colors.purpleAccent[200],
          filled: true,
          prefixIcon: Container(
            child: Icon(Icons.person, color: Colors.black),
          ),
          labelText: "Username",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    ));
  }

  Container emailFormField() {
    return Container(
      margin: EdgeInsets.only(top: 10),
        child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(width: 3, color: Colors.purpleAccent[200]),
          ),
          fillColor: Colors.white,
          focusColor: Colors.purpleAccent[200],
          filled: true,
          prefixIcon: Container(
            child: Icon(Icons.email, color: Colors.black),
          ),
          labelText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    ));
    }

    Container passwordFormField() {
    return Container(
      margin: EdgeInsets.only(top: 10),
        child: TextFormField(
        obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(width: 3, color: Colors.purpleAccent[200]),
          ),
          fillColor: Colors.white,
          focusColor: Colors.purpleAccent[200],
          filled: true,
          prefixIcon: Container(
            child: Icon(Icons.lock, color: Colors.black),
          ),
          labelText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    ));
    }

    Container confirmFormField() {
    return Container(
      margin: EdgeInsets.only(top: 10),
        child: TextFormField(
        obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(width: 3, color: Colors.purpleAccent[200]),
          ),
          fillColor: Colors.white,
          focusColor: Colors.purpleAccent[200],
          filled: true,
          prefixIcon: Container(
            child: Icon(Icons.lock, color: Colors.black),
          ),
          labelText: "Confirm Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    ));
    }

  Container registerButton(){
  return Container(
    margin: EdgeInsets.fromLTRB(25, 20, 25, 10),
    height: 50.0,
    width: 500.0, 
    
    child: Builder(builder: (context) => ElevatedButton(

      child: Text(
        'Register', style: TextStyle(color: Colors.black, fontSize: 18)
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