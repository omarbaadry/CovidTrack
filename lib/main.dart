import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

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
                  child: TextFormField(
              decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Name'),
          ),
                    ),
                    Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'email',
                      
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
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
                        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => home()),
            );
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
                        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => home()),
            );
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
 
class home extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('covid tracker'),
                    actions: <Widget>[
          IconButton(
            icon: Icon(
                Icons.settings,
                size:30,
                color: Colors.white,
      ),
      onPressed: () {
          //settings
      },
    )
  ],
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
              MaterialPageRoute(builder: (context) => Venues()),
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
                        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => symptoms()),
            );
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
                        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Selfiso()),
            );
                      },
                    )),
              ],
            )));
  }
}

class Tracing extends StatelessWidget{
  
 
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
          //settings
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
                      'Tracing',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
               
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Location Here',
                    ),
                  ),
                ), 
                Container(
                  height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Search Location'),
                      onPressed: () {
                        //autosuggestion for locations
                      },
                    )),
                    
                  
                 
              ],
            )));
  }
}

class Venues extends StatelessWidget{
 
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
          
      },
    ),
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

class profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: new Stack(
      children: <Widget>[
        ClipPath(
          child: Container(color: Colors.white),
          
        ),
        Positioned(
            width: 350.0,
            top: MediaQuery.of(context).size.height / 7,
            child: Column(
              children: <Widget>[
                Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage('https://images.unsplash.com/photo-1547721064-da6cfb341d50?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        )),
                SizedBox(height: 70.0),
                Text(
                  'Omar Badry',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(height: 15.0),
                Text(
                  'E-mail: Omar1707863@miuegypt.edi.eg',
                ),
                Text(
                  'Age: 22 Years',
                ),
                Text(
                  'Test: Negative',
                ),
                SizedBox(height: 25.0),
                Container(
                    height: 30.0,
                    width: 95.0,
                    child: Material(
                      shadowColor: Colors.blue,
                      color: Colors.blue,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    )),
                    SizedBox(height: 25.0),
                Container(
                    height: 30.0,
                    width: 95.0,
                    child: Material(
                      shadowColor: Colors.redAccent,
                      color: Colors.red,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Sign-out',
                            style: TextStyle(color: Colors.white, fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ))
              ],
            ))
      ],
    ));
  }
}



class symptoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Check symptomps ';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}


class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
              decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Name'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter Name';
              }
              return null;
            },
          ),
          TextFormField(
              decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Body Tempreture'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter Body Tempreture';
              }
              return null;
            },
          ),
          
          TextFormField(
              decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Been in contact with any covid-19 carrier'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your answer';
              }
              return null;
            },
          ),

          TextFormField(
              decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Do you have fever or chills?'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your answer';
              }
              return null;
            },
          ),
          TextFormField(
              decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Do you have cough or shortens of birth?'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your answer';
              }
              return null;
            },
          ),
          TextFormField(
              decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Do you have body aches or headaches'),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your answer';
              }
              return null;
            },
          ),
          

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                
                if (_formKey.currentState.validate()) {
                  
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}



class Selfiso extends StatefulWidget {

  @override
  _SelfState createState() => _SelfState();
}

class _SelfState extends State<Selfiso> {
  CountDownController _controller = CountDownController();
  bool _isPause = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Self isolation Countdown'),
      ),
      body: Center(
          child: CircularCountDownTimer(
        duration: 100000 ,

        controller: _controller,

        
        width: MediaQuery.of(context).size.width / 2,

        height: MediaQuery.of(context).size.height / 2,

        color: Colors.white,

        fillColor: Colors.red,

        backgroundColor: null,

        strokeWidth: 5.0,

        textStyle: TextStyle(
            fontSize: 22.0, color: Colors.black, fontWeight: FontWeight.bold),

        
        isReverse: true,

        
        isReverseAnimation: false,

        
        isTimerTextShown: true,

        
        onComplete: () {
          
          print('Quarantine Ended');
        },
      )),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              if (_isPause) {
                _isPause = false;
                _controller.resume();
              } else {
                _isPause = true;
                _controller.pause();
              }
            });
          },
          icon: Icon(_isPause ? Icons.play_arrow : Icons.pause),
          label: Text(_isPause ? "Start Quarantine" : "Pause Quarantine")),
    );
  }
}

