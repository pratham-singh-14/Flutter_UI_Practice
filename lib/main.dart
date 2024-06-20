import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trip App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       fontFamily: "Montserrat",
        colorScheme: ColorScheme.light(
          brightness: Brightness.light
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  int totalpages=7;

  void onscroll() {

  }
  @override
  void initState() {
    _pageController=PageController(
      initialPage: 0
    )..addListener(onscroll);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makeui("assets/images/i6.jpg", "Luxury Comfort Rolls Royce","Discover the epitome of luxury and comfort with Rolls Royce. Explore the features that make Rolls Royce the pinnacle of automotive comfort.", 1,1800),
          makeui("assets/images/i2.jpg",
              "Life of Horses","Discover the beauty and essence of horse life. Learn about the behaviors, care, and role of horses in nature. Dive into the world of horses with our insightful articles.",2,1500),
          makeui("assets/images/i7.jpg", "Thrilling Adventure in Forest","Embark on a thrilling journey through the enchanted forest. Discover hidden wonders, encounter majestic wildlife, and experience the magic of nature. Plan your scenic escapade today!", 3,890),

          makeui("assets/images/i1.jpg","The Wonders of the Sea","Explore the beauty and mysteries of the sea in our comprehensive guide. Learn about marine life, conservation efforts, and more. Dive into the world under the sea today!",4,675),
          makeui("assets/images/i3.jpg","Cat Care Guide","Discover expert tips and tricks for providing top-notch quality care for your cat. Learn how to enhance your cat's well-being and happiness with our comprehensive guide.",5,902),
          makeui("assets/images/i4.jpg","Benefit of Forest","Explore the numerous benefits of forests, including clean air, biodiversity, and relaxation. Learn how forests positively impact the environment and our well-being.",6,1898),
          makeui("assets/images/i5.jpg","Racing Cars ","Explore the world of racing cars and fuel your passion for speed. Get insider tips, latest trends, and more about racing cars. Start your high-speed journey now!",7,726),

        ],
      )

    );
  }
  Widget makeui(image,title,description,pages,rating)
  {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),fit: BoxFit.cover
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3,0.9],
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.1)
            ]
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(pages.toString(),style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                  Text("/"+totalpages.toString(),style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                ],
              ),
              Expanded(child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 40),),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin:EdgeInsets.only(right: 3),
                        child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                      ),
                      Container(
                        margin:EdgeInsets.only(right: 3),
                        child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                      ),
                      Container(
                        margin:EdgeInsets.only(right: 3),
                        child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                      ),
                      Container(
                        margin:EdgeInsets.only(right: 3),
                        child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                      ),
                      Container(
                        margin:EdgeInsets.only(right: 5),
                        child: Icon(Icons.star,color: Colors.grey,size: 15,),
                      ),
                      Text("4.0",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 15),),
                      Text("("+rating.toString()+")",style: TextStyle(color: Colors.white38,fontWeight: FontWeight.bold,fontSize: 12),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: Text(description,style: TextStyle(color: Colors.white.withOpacity(0.7),height: 1.9,fontSize: 15),),
                  ),
                  SizedBox(height: 10,),
                  Text("READ MORE",style: TextStyle(color: Colors.white),)
                ],
              ))

            ],


          ),
        ),
      ),

    );
  }



}
