import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      

      title: 'Flutter Demo',
      theme: ThemeData(
        
        primaryColor: Colors.blue,
        
        inputDecorationTheme: InputDecorationTheme(border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),filled: true,),
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.latoTextTheme(
          TextTheme(
            bodyText1: TextStyle(fontSize: 10),
            bodyText2: TextStyle(fontSize: 15) ,
            subtitle1: TextStyle(fontSize: 27,fontWeight:FontWeight.bold ),
            subtitle2: TextStyle(fontSize: 20,fontWeight:FontWeight.bold )
          )
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(70, 70, 70, 100),

          child: Scaffold(
            backgroundColor: Colors.white,
            
            body: Container(
              decoration: BoxDecoration(border: Border.all(width: 5),borderRadius: BorderRadius.all(Radius.circular(50),),
               
              ),
              child: SafeArea(
                
                  child: Column(
                    
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 80, 0, 0),
                        child: Row(
                          children: [
                            
                            Text('Welcome!',style: Theme.of(context).textTheme.subtitle2,),
                            
                          ],
                        ),
                      )
                      ,Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 35),
                        child: Row(
                          children: [
                            
                            Text('Login',style: Theme.of(context).textTheme.subtitle1,)
                          ],
                        ),
                      )
                      ,Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: SizedBox(
                          height: 35,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Your Name '
                            ),
                        
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: SizedBox(
                          height: 35,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Password'
                            ),
                        
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 30, 60, 0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          
                        ), child: Text(
                            'LOGIN',
                            style: Theme.of(context).textTheme.bodyText2,
                            
                            )),
                        ),
                      )
                      ,SizedBox(
                        width: double.infinity,
                        
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(70, 20, 70, 40),
                          child: ElevatedButton(onPressed: () {}, child: Text(
                            'Forget Password?',style: Theme.of(context).textTheme.bodyText1,
                                      
                          )),
                        ),
                      )
                    ,SizedBox(
                      width: double.infinity,
                      height: 25,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 6, 25, 0),
                        child: ElevatedButton(onPressed: () {}, child:
                         Text('Dont have an account?Creat Account',style: Theme.of(context).textTheme.bodyText1,),
                         
                         
                         ),
                      ))
                        ],),
                ),
            )
            ),
        );
       
  }
}