import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 178,
                    width: 128,
                    child: Image(
                      image: AssetImage("images/Noura.png"),
                      fit: BoxFit.contain,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 165, 68),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  SizedBox(
                    width: 34,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Sara",
                        style: TextStyle(fontSize: 34),
                      ),
                      Text(
                        "Heart Specialist",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700],
                        ),
                      ),
                       SizedBox(height: 16),
              Row(
                children: [
                  
                  CustomIconstle(icon: Icons.mail,),
                  SizedBox(width: 8),
                 CustomIconstle(icon: Icons.phone,),
                   SizedBox(width: 8),
                 CustomIconstle(icon: Icons.video_call,),

                  ],
                  
              ),
                      Row(),
                    ],
                  )
                ],
              ),
              SizedBox(height: 32,),
              Text(
                "About",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8), 
              Text(
                "Lorem Ipsum is simply dumy text of the printing and typeseing.......",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey[700]
                    ),
              ),
             
             
             SizedBox(
              height: 40,
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                children: [
                  Row
                  (children: [
                   Icon(Icons.location_on_outlined,
                   color: Colors.grey[700],
                   ),
                   SizedBox(width: 4),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text("Address",
                   style: TextStyle(
                    fontSize:24,
                    ),
                    ),
                    Text(
                      "House 2 Road 5/nSadudi Arabia, Riyadh/nKing Fisal Hospital",
                   style: TextStyle(color:Colors.grey[700],
                   ),
                    ),
                    ],
                    )
                  ],
                  
                  )],
              ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
              image:AssetImage("images/Nouraa.webp",),
              height: 300,
              width: 150,
              fit:BoxFit.cover ,
              ),
            )
            ],
            ),
             
              
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIconstle extends StatelessWidget {
  const CustomIconstle({
    super.key, required this.icon,
  });
  
  final IconData icon;


  @override 
  Widget build(BuildContext context) {
    return Container(
    child:Icon(
      icon,
    color: Colors.orangeAccent,
    size: 32,
    
    ) ,
    height: 48,
    width: 48,
    decoration: BoxDecoration(
      color:Colors.deepOrangeAccent[50] ,
      borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}

  