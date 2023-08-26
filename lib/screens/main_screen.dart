import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5842A9),
      body: SafeArea(
        child: Align(
           alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(left: 18,right: 18),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                    height:40, 
                    width:40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color:Color(0xff331c71),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Image(
                        color: Colors.white,
                        image: AssetImage("assets/images/menu.png"),
                      ),
                    ),
                      
                    ),
                    const Text("Sydeny",style: TextStyle(fontSize:18, fontWeight: FontWeight.bold,color: Colors.white),),

                    Container(
                    height:40, 
                    width:40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color:Color(0xff331c71),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Image(
                        color: Colors.white,
                        image: AssetImage("assets/images/menu.png"),
                      ),
                    ),
                      
                    )
                  ],
                ),
                SizedBox(height: 35,),
                Text("Mostly sunny",style: TextStyle(color: Colors.white),),
                 getstack(),
                 SizedBox(height: 20,),
                Text("Friday, 10 August| 1:15 AM",style: TextStyle(color: Colors.white)),
                SizedBox(height: 25,),
                Container(
                  height: 125,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color:Color(0xff331c71),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8,top: 18),
                          child: Column(
                            children: [
                              Image.asset("assets/images/rain.png",height: 40,width: 40),
                              const Text("30",style: TextStyle(fontSize: 16,color: Colors.white),),
                              Text("Precipition",style: TextStyle(fontSize: 16,color: Colors.white))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: Column(
                            children: [
                              Image.asset("assets/images/humidity.png",height: 40,width: 40),
                              const Text("20",style: TextStyle(fontSize: 16,color: Colors.white),),
                              Text("Humidity",style: TextStyle(fontSize: 16,color: Colors.white))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18,right: 8),
                          child: Column(
                            children: [
                              Image.asset("assets/images/windy.png",height: 40,width: 40),
                              const Text("9 km/h",style: TextStyle(fontSize: 16,color: Colors.white),),
                              Text("Wind Speed",style: TextStyle(fontSize: 16,color: Colors.white))
                            ],
                          ),
                        )

                      ],
                    ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Today",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white),),
                    Text("7 Day Forecast",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white)),
                  ],
                ),
                SizedBox(height: 20, ),
                todayWeather(),
                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Other Cities",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                    Text("+",style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight:FontWeight.bold
                    ),)
                  ],
                ),
                SizedBox(height: 50,),
                otherCities(),
                  
               ],
            ),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView todayWeather() {
    return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                children: [
                Container(
                  height: 130,width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xff331c71),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text("10 AM",
                          style: TextStyle( fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),),
                      Image.asset("assets/images/sunny.png",height: 40),
                      
                      Center(child: Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text("26°",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)))
                    ],
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  height: 130,width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xff331c71),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text("11 AM",
                          style: TextStyle( fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),),
                      Image.asset("assets/images/sunny.png",height: 40),
                      
                      Center(child: Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text("26°",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)))
                    ],
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  height: 130,width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xff331c71),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text("12 PM",
                          style: TextStyle( fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),),
                      Image.asset("assets/images/sunny.png",height: 40),
                      
                      Center(child: Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text("27°",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)))
                    ],
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  height: 130,width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xff331c71),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text("1 PM",
                          style: TextStyle( fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),),
                      Image.asset("assets/images/cloudy.png",height: 40),
                      
                      Center(child: Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text("23°",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)))
                    ],
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  height: 130,width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xff331c71),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text("2 PM",
                          style: TextStyle( fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),),
                      Image.asset("assets/images/rainy.png",height: 40),
                      
                      Center(child: Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text("20",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)))
                    ],
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  height: 130,width: 80,
                  decoration: BoxDecoration(
                    color: Color(0xff331c71),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text("3 PM",
                          style: TextStyle( fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                          ),
                        ),),
                      Image.asset("assets/images/rainy.png",height: 40),
                      
                      Center(child: Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Text("19°",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),)))
                    ],
                  ),
                )
                ],),
              );
  }

  Stack getstack() {
    return Stack(
                children: [
                  Text("23°",style: TextStyle(
                    fontSize: 150,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                    ),),
                    
                    Opacity(
                      opacity: 0.8,
                      child: Padding(
                        padding: EdgeInsets.only(left: 50,top:70),
                        child: Image(
                          height: 100,
                          image:AssetImage("assets/images/cloudy_sunny.png")),
                      ),
                    ),
        
                ],
              );
  }
}

class otherCities extends StatelessWidget {
  const otherCities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 90,width: 300,
            decoration: BoxDecoration(
              color: Color(0xff331c71),
              borderRadius: BorderRadius.circular(16),
              
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("10 AM",
                  style: TextStyle( fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
                Image.asset("assets/images/windy.png",height: 60),
                
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text("23°",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)
                  )
              ],
            ),
          ),
          SizedBox(width:10),
          Container(
          height: 90,width: 350,
          decoration: BoxDecoration(
            color: Color(0xff331c71),
            borderRadius: BorderRadius.circular(16),
            
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("10 AM",
                style: TextStyle( fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset("assets/images/windy.png",height: 60),
              
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text("23°",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),))
            ],
          ),
        ),
          ]
       ),
    );
  }
}