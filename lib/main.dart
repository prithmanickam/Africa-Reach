import 'package:flutter/material.dart';

class Posting{
  final String pic;
  final String industry;
  final String role;
  final String type;
  //static String YrsOfExp;
  final String language;
  final String softSkill;
  final int salary;
  //static String programingLang;

  Posting(this.pic, this.industry, this.role, this.type, this.language, this.softSkill, this.salary);
  
}

void main() {
  //postings
  final Posting p1 = Posting('assets/posting1.png','IT','se','parttime','lagos','communication',10000);
  
  
  
  runApp(const MaterialApp(
    title: 'Africa-Reach',    
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);
     
  
    @override
    Widget build(BuildContext context) {
      // 1. Example without prevent image resizing (can be used if the application never show the on-screen keyboard).
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: Colors.green
          
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              // colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
              //image: NetworkImage(imageUrl),
              image: Image.asset('assets/background_pattern.png').image,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              SizedBox(
                    height: 200.0,
                    child: Image.asset(
                      "assets/AfricaReach_Logo.png",
                      fit: BoxFit.contain,
                    ),
              ),
              const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Username"
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password"
                    ),
                  ),
              ElevatedButton(

                    child: const Text('Login'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SecondRoute()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                  
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(

                    child: const Text('Signup'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SecondRoute()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),  
                  ),
              
            ],
          ),
        ),
      );
  
      // 2. Example that prevents image resizing when the keyboard is shown.
      
    }
  }
class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);
  
    static const Widget appName = const Text(
      "Part-Time Software Engineer at 'Africa-Reach'",
      style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
    );
    
  
    @override
    Widget build(BuildContext context) {
      // 1. Example without prevent image resizing (can be used if the application never show the on-screen keyboard).
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('       Job recommendations'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              // colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
              //image: NetworkImage(imageUrl),
              image: Image.asset('assets/background_pattern2.png').image,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.double_arrow,
                color: Colors.black,
                size: 48.0,
                semanticLabel: 'Text',
              ),
              SizedBox(height: 12),
              appName,
              SizedBox(height: 12),
              SizedBox(
                    height: 355.0,
                    width: 555.0,
                    child: Image.asset(
                      "assets/posting1.png",
                      fit: BoxFit.contain,
                    ),
              ),
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 48.0,
                semanticLabel: 'Text',
              ),
              
              ElevatedButton(
                
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('View favourites'),
              ),
              
            ],
          ),
        ),
      ); 
    }
  }
