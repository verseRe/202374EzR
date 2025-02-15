import 'package:ezrestaurantapp/screens/cart_screen.dart';
import 'package:ezrestaurantapp/screens/favourite_screen.dart';
import 'package:ezrestaurantapp/screens/login_screen.dart';
import 'package:ezrestaurantapp/services/auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex=0;
  final Authenticate _auth = Authenticate();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
  title: Text('EzRestaurant'),
      automaticallyImplyLeading: false,
      actions: <Widget>[
        ElevatedButton.icon(
            icon: Icon(Icons.person),
            label: Text("Logout"),
            onPressed: () async{
              dynamic result = await _auth.signOut();

              if(result==null) {

                print("signout");

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              }
            },
        ),
      ],

    ),
      body: Container(

        child: GridView.count(

          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 4,

          children: <Widget>[

            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.add_shopping_cart),
                        Icon(Icons.favorite,color:Colors.red)
                      ],
                    ),
                    Icon(Icons.album,
                    size: 100,),
                    Text("Nasi Lemak"),

                  ],
                ),
              ),
              color: Colors.teal[100],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.add_shopping_cart),
                        Icon(Icons.favorite,color:Colors.red)
                      ],
                    ),
                    Icon(Icons.album,
                      size: 100,),
                    Text("Mi Goreng"),

                  ],
                ),
              ),
              color: Colors.teal[200],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.add_shopping_cart),
                        Icon(Icons.favorite,color:Colors.red)
                      ],
                    ),
                    Icon(Icons.album,
                      size: 100,),
                    Text("Ayam Goreng"),

                  ],
                ),
              ),
              color: Colors.teal[300],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.add_shopping_cart),
                        Icon(Icons.favorite,color:Colors.red)
                      ],
                    ),
                    Icon(Icons.album,
                      size: 100,),
                    Text("Roti Canai"),

                  ],
                ),
              ),
              color: Colors.teal[400],
            ),

          ],

        ),

      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourites',
          ),
        ],
      currentIndex: _selectedIndex,
      onTap:  (_selectedIndex) {
          switch(_selectedIndex) {
            case 1: Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartScreen()),
            );
              break;

            case 2: Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavouriteScreen()),
            );

          }
      },
      ),


    );
  }
}

