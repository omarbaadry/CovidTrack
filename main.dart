
 import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Signup(),
  ));
}
 
class Signup extends StatefulWidget {
  @override
  _State createState() => _State();
}
 
class _State extends State<Signup> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   TextEditingController mobileController = TextEditingController();
    TextEditingController emailController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('sign up'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'covid tracker',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign up',
                      style: TextStyle(fontSize: 20),
                    )),
                    Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: mobileController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'phone number',
                    ),
                  ),
                ),
                    Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('create account'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                         print(emailController.text);
                          print(mobileController.text);
                      },
                    )),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text('Does have account?'),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text(
                          'Sign in',
                          style: TextStyle(fontSize: 20),
                        ),
                         onPressed: () {
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => Signin()),
            );
          },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}

 

 
class Signin extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('login'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'covid tracker',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('Forgot Password'),
                ),
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text('Does not have account?'),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text(
                          'Sign up',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Signup()),
            );
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}

class home extends StatefulWidget {
  @override
  _State createState() => _State();
}
 
class _State extends State<home> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   TextEditingController mobileController = TextEditingController();
    TextEditingController emailController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('covid tracker'),
       
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
               
               
                  
                Container(
                  height: 50,
                    padding: EdgeInsets.only(top: 5),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('tracker'),
                      onPressed: () {
                        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Tracing()),
            );
                      },
                    )),
                     Container(
                  height: 50,
                    padding:  EdgeInsets.only(top: 5),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('risk level'),
                      onPressed: () {
                           // Navigator.push( 
                           //context,
                           //MaterialPageRoute(builder: (context) => Signup()),
                           //);
                      },
                    )),
             Container(
                  height: 50,
                    padding:  EdgeInsets.only(top: 5),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('check into venues'),
                      onPressed: () {
                        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Signup()),
            );
                      },
                    )),
                    Container(
                  height: 50,
                    padding:  EdgeInsets.only(top: 5),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('check symptoms'),
                      onPressed: () {
            //    Navigator.push(
            //  context,
            //  MaterialPageRoute(builder: (context) => Signup()),
            //);        
                      },
                    )),
                    Container(
                  height: 50,
                    padding:  EdgeInsets.only(top: 5),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('book a free test'),
                      onPressed: () {
                //Navigator.push(
              //context,
              //MaterialPageRoute(builder: (context) => Signup()),
            //);        
                      },
                    )),
                    Container(
                  height: 50,
                    padding:  EdgeInsets.only(top: 5),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('self isolation countdown'),
                      onPressed: () {
                  //  Navigator.push(
              //context,
              //MaterialPageRoute(builder: (context) => Signup()),
            //);    
                      },
                    )),
              ],
            )));
  }
}

import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
 
class Venues extends StatefulWidget {
  @override
  _State createState() => _State();
}
 
class _State extends State<Venues> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Covid Tracker'),
          actions: <Widget>[
          IconButton(
            icon: Icon(
                Icons.settings,
                size:30,
                color: Colors.white,
      ),
      onPressed: () {
          //settings page
      },
    )
  ],
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Check into Venues',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
               
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Location Here',
                    ),
                  ),
                ), 
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Search Location to view nearby Venues'),
                      onPressed: () {
                        //autosuggestion for locations
                      },
                    )),
                    
                    Container(
                  height: 50,
                  
                    padding: EdgeInsets.only(top: 5),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Book Now'),
                      
                      onPressed: () {
                        //Venue Booking Page
                      },
                    )),
                  
                 
              ],
            )));
  }
}
